
<?php
    include "validate_customer.php";
    include "header.php";
    include "customer_navbar.php";
   include "customer_sidebar.php";


    $id = $_SESSION['loggedIn_cust_id'];



    $sql0 = "SELECT * FROM customer WHERE cust_id=".$id;
    $result0 = $conn->query($sql0);
    $row0 = $result0->fetch_assoc();

    $sql3 = "SELECT * FROM customer WHERE cust_id=".$id;
    $result3 = $conn->query($sql3);
    $row3 = $result3->fetch_assoc();
    

    $sql1 = "SELECT * FROM passbook".$id." WHERE trans_id=(
                    SELECT MAX(trans_id) FROM passbook".$id.")";
    $result1 = $conn->query($sql1);
    $row1 = $result1->fetch_assoc();





    if ($row1["debit"] == 0) {
        $transaction = $row1["credit"];
        $type = "credit";
    }
    else {
        $transaction = $row1["debit"];
        $type = "debit";
    }

    $time = strtotime($row1["trans_date"]);
    $sanitized_time = date("d/m/Y, g:i A", $time);

    $sql2 = "SELECT COUNT(*) FROM beneficiary".$id;
    $result2 = $conn->query($sql2);
    $row2 = $result2->fetch_assoc();


          //pagination settings
$limit = 10;
$page =isset($_GET['page']) ? (int)
$_GET['page'] : 1;
$start = ($page - 1) * $limit;
  //fetch total
  $sql_total = "SELECT COUNT(*) as total FROM passbook".$id."";
  $result_tot = $conn->query($sql_total);
  $total_row = $result_tot->fetch_assoc();
  $total_records = $total_row['total'];
  $total_pages = ceil($total_records / $limit);

  $sql0 = "SELECT * FROM passbook".$id." ORDER BY trans_date DESC LIMIT $start, $limit";
      $result = $conn->query($sql0);
  
      $sql3 = "SELECT * FROM passbook".$id."";
      $result3 = $conn->query($sql3);

  // Recive sort variables as $_GET
  if (isset($_GET['sort'])) {
      $sort = $_GET['sort'];
  }

  // Recieve filter variables as session variables
  if (isset($_POST['search_term'])) {
      $_SESSION['search_term'] = $_POST['search_term'];
  }
  if (isset($_POST['date_from'])) {
      $_SESSION['date_from'] = $_POST['date_from'];
  }
  if (isset($_POST['date_to'])) {
      $_SESSION['date_to'] = $_POST['date_to'];
  }

  // Filter indicator variable
  $filter_indicator = "None";

  // Queries when search is set
  if (!empty($_SESSION['search_term'])) {
      $sql3 .= " WHERE remarks COLLATE latin1_GENERAL_CI LIKE '%".$_SESSION['search_term']."%'";
      $filter_indicator = "Remarks";

      if (!empty($_SESSION['date_from']) && empty($_SESSION['date_to'])) {
          $sql3 .= " AND trans_date > '".$_SESSION['date_from']." 00:00:00'";
          $filter_indicator = "Remarks & Date From";
      }
      if (empty($_SESSION['date_from']) && !empty($_SESSION['date_to'])) {
          $sql3 .= " AND trans_date < '".$_SESSION['date_to']." 23:59:59'";
          $filter_indicator = "Remarks & Date To";
      }
      if (!empty($_SESSION['date_from']) && !empty($_SESSION['date_to'])) {
          $sql3 .=  " AND trans_date BETWEEN '".$_SESSION['date_from']." 00:00:00' AND '".$_SESSION['date_to']." 23:59:59'";
          $filter_indicator = "Remarks, Date From & Date To";
      }
  }

  // Queries when search is not set
  if (empty($_SESSION['search_term'])) {
      if (!empty($_SESSION['date_from']) && empty($_SESSION['date_to'])) {
          $sql3 .= " WHERE trans_date > '".$_SESSION['date_from']." 00:00:00'";
          $filter_indicator = "Date From";
      }
      if (empty($_SESSION['date_from']) && !empty($_SESSION['date_to'])) {
          $sql3 .= " WHERE trans_date < '".$_SESSION['date_to']." 23:59:59'";
          $filter_indicator = "Date To";
      }
      if (!empty($_SESSION['date_from']) && !empty($_SESSION['date_to'])) {
          $sql3 .=  " WHERE trans_date BETWEEN '".$_SESSION['date_from']." 00:00:00' AND '".$_SESSION['date_to']." 23:59:59'";
          $filter_indicator = "Date From & Date To";
      }
  }
//pagination

  // Sort Queries
  // Sort acts independent of the filter
  if (isset($_GET['sort'])) {
      if ($sort == 'tid_down') {
          $sql3 .= " ORDER BY trans_id ASC";
      }
      if ($sort == 'tid_up') {
          $sql3 .= " ORDER BY trans_id DESC";
      }
      if ($sort == 'date_down') {
          $sql3 .= " ORDER BY trans_date ASC";
      }
      if ($sort == 'date_up') {
          $sql3 .= " ORDER BY trans_date DESC";
      }
  }
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Enjoy the benefits of being a CrestProvidentBank client. We offer checking &amp; savings accounts, credit cards, insurance, and loans. Open your CrestProvidentBank account today!">
  <meta name="author" content="CrestProvidentBank">
  <title>Crest Provident Bank::dashboard</title>
  <!-- Favicon -->

  <!-- Fonts -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
  <!-- Icons -->
  <link rel="stylesheet" href="assets/vendor/nucleo/css/nucleo.css" type="text/css">
  <link rel="stylesheet" href="assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
  <!-- Page plugins -->
  <!-- Argon CSS -->
  <link rel="stylesheet" href="assets/css/argon.css?v=1.2.0" type="text/css">
</head>

<body>
<style>
        .pagination {
            margin: 20px 0;
            padding: 0;
            list-style-type: none;
        }
        .pagination li {
            display: inline;
            margin: 0 5px;
        }
        .pagination a {
            padding: 5px 10px;
            text-decoration: none;
            border: 1px solid #007bff;
            color: #007bff;
        }
        .pagination a.active {
            background-color: #f6c209;
            color: white;
        }
        .pagination a.disabled {
            border-color: #ccc;
            color: #ccc;
            pointer-events: none;
  cursor: auto;
        }
       
</style>
   <!-- Header -->
    <!-- Header -->
 
  

    <div class="header bg-secondary pb-6">
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center py-4">
            <div class="col-lg-6 col-8">
              
              <label id="lblGreetings"></label><h6 class="h2 mb-0"><?php echo $row0["first_name"] ?>&nbsp<?php echo $row0["last_name"] ?>&nbsp!</h6>

            </div>

          </div>
          <!-- Card stats -->
          <div class="row">
            <div class="col-xl-6 col-md-8">
              <div class="card card-stats">
                <!-- Card body -->
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase mb-0"><a href="customer_transactions.php?sort=tid_up">TOTAL CHECKING(...<?php echo substr($row0["account_no"],-4); ?>) ></a></h5>
                      <span class="h2 font-weight-bold mb-0">$<?php echo number_format($row1["balance"]); ?></span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-primary text-white rounded-circle shadow">
                        <i class="fas fa-dollar-sign"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-sm">
                    <span class="text-success mr-2"><i class=" fa fa-circle"></i></span>
                    <span class="text-nowrap">Account Balance</span>
                  </p>
                </div>
              </div>
            </div>
                      
            <div class="col-xl-6 col-md-8">
              <div class="card card-stats">
                <!-- Card body -->
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase mb-0"><a href="customer_transactions.php?sort=tid_up">CREST PROSAVE(...2635) ></a></h5>
                      <span class="h2 font-weight-bold mb-0">$<?php echo number_format(1270); ?></span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-primary text-white rounded-circle shadow">
                        <i class="fas fa-dollar-sign"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-sm">
                    <span class="text-success mr-2"><i class=" fa fa-circle"></i></span>
                    <span class="text-nowrap">Account Balance</span>
                  </p>
                </div>
              </div>
            </div>
            <div class="col-xl-6 col-md-8">
              <div class="card card-stats">

                <!-- Card body -->
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Loan Balance</h5>
                      <span class="h2 font-weight-bold mb-0">0.00</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-gradient-info text-white rounded-circle shadow">
                        <i class="ni ni-chart-bar-32"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-sm">
                    <span class="text-success mr-2"><i class="fa fa-arrow-up"></i></span>
                    <span class="text-nowrap">Today</span>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Page content -->
    <div id="id01" class="modal">

<form class="modal-content animate" action="" method="post">
  <div class="imgcontainer">
    <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Filter">&times;</span>
  </div>

  <div class="container">
      <h1 id="filter">Filter</h1>
      <p id="filter">(Leave blank to remove filter)</p>
    <label>Trans. Remarks :</label>
    <input type="text" placeholder="Enter Remarks" name="search_term">

    <label>Duration (yyyy-mm-dd) :</label>
    <div class="duration-container">
        <div class="date-container">
            <input id="date" type="text" placeholder="From" name="date_from">
        </div>
        <p id="minus">&minus;<b</p>
        <div class="date-container">
            <input id="date" type="text" placeholder="Upto" name="date_to">
        </div>
    </div>


    <button id="submit" type="submit">Go</button>
  </div>

</form>
</div>




<div class=" pb-6">
<div class="container-fluid">
  <div class="header-body">
    <div class="row align-items-center py-4">
    <div class="col-lg-2 col-10">
        <h3 class=" text-white d-inline-block mb-0">Activity for: <?php echo $row0["account_no"]; ?></h3>
</div>
        <div class="col-lg-2 col-6">
            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
          <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
          
            <li>Filter : </li>
            <li> <?php echo $filter_indicator ?></li>
          </ol>
        </nav>
      </div>
      <div class="col-lg-6 col-5 text-right">
  
      
              <select class="btn btn-sm btn-neutral"name="by" onChange="window.location.href=this.value">
                  <option selected disabled hidden>
                      <?php if (empty($_GET['sort'])) {?>Tn. ID &darr;<?php } else { ?>
                          <?php if ($sort == 'tid_down') {?>Tn. ID &darr;<?php } ?>
                          <?php if ($sort == 'tid_up') {?>Tn. ID &uarr;<?php } ?>
                          <?php if ($sort == 'date_down') {?>Date &darr;<?php } ?>
                          <?php if ($sort == 'date_up') {?>Date &uarr;<?php } ?>
                      <?php } ?>
                  </option>
                  <option value="dashboard.php?sort=tid_down">Tn. ID &darr;</option>
                  <option value="dashboard.php?sort=tid_up">Tn. ID &uarr;</option>
                  <option value="dashboard.php?sort=date_down">Date &darr;</option>
                  <option value="dashboard.php?sort=date_up">Date &uarr;</option>
              </select>
    
              
        <a id="search" onclick="document.getElementById('id01').style.display='block'" class="btn btn-sm btn-neutral">Filters</a>
      </div>
    </div>
  </div>
</div>
</div>
<!-- Page content -->
<div class="container-fluid mt--6">
<div class="row">
  <div class="col">
    <div class="card">
      <!-- Card header -->
      <div style="background:#f6c209;" class="card-header border-0">
        <h3 class="mb-0">Account Balance: $<?php echo number_format($row1["balance"]); ?></h3>
      </div>
      <!-- Light table -->
      <div class="table-responsive">
      <?php
      $result = $conn->query($sql0);

      if ($result->num_rows > 0) {?>
        <table class="table align-items-center table-flush">
          <thead class="thead-light">
            <tr>
              <!-- <th scope="col" class="sort" data-sort="name">Transaction ID</th> -->
              <th scope="col" class="sort" data-sort="budget">Date/Time</th>
              <th scope="col" class="sort" data-sort="status">Description</th>
              <th scope="col">Debit</th>
              <th scope="col" class="sort" data-sort="completion">Credit</th>
              <th scope="col">Balance</th>
            </tr>
          </thead>
          <tbody class="list">
         
          <?php
      // output data of each row
      while($row = $result->fetch_assoc()) {?>
             <tr><a href="">
          
              </th>
              <div>
              <td class="budget">
                                  <?php
                          $time = strtotime($row["trans_date"]);
                          $sanitized_time = date("d/m/Y, g:i A", $time);
                          echo $sanitized_time;
                       ?>
             </td>
              <td class="budget">
<?php echo $row["remarks"]; ?>
              </td>
              <td style="color:red" class="budget">
                                 <?php echo number_format($row["debit"]); ?>
              </td>
              <td style="color:green" class="budget">
<?php echo number_format($row["credit"]); ?>
              </td>
              <td class="budget">
              <?php echo number_format($row["balance"]); ?>
              </td>

</div>
            </a></tr>
            <?php } ?>
            
          </tbody>
        </table>
        <?php
      } else {  ?>
          <p id="none"> No results found :(</p>
      <?php }
      $conn->close(); ?>
      </div>
      <!-- Card footer -->
      <div class="card-footer py-4">
        <nav aria-label="...">
        <ul class="pagination justify-content-end mb-0">

<li class="page-item">
<a class="page-link <?php if ($page == 1) echo 'disabled'; ?>" href="dashboard.php?sort=tid_up&page=<?php echo max(1, $page - 1); ?>" tabindex="-1">
<i class="fas fa-angle-left"></i>
<span class="sr-only">Previous</span>
</a>
</li>
<!-- First few pages and last page -->
<?php if ($total_pages > 1): ?>
  <li class="page-item">
    <a href="dashboard.php?sort=tid_up&page=1" class="page-link <?php echo ($page == 1) ? 'active' : ''; ?> ">1</a>
  </li>

  <?php if ($total_pages > 2): ?>
  <li class="page-item">
    <a href="dashboard.php?sort=tid_up&page=2" class="page-link <?php echo ($page == 2) ? 'active' : ''; ?> ">2</a>
  </li>
  <?php endif; ?>
  <?php if ($total_pages > 3): ?>
  <li class="page-item">
    <a href="dashboard.php?sort=tid_up&page=3" class="page-link <?php echo ($page == 3) ? 'active' : ''; ?> ">3</a>
  </li>
<?php endif; ?>
  <?php if ($total_pages > 4): ?>
  <li class="page-item">
    <a href="dashboard.php?sort=tid_up&page=<?php echo $total_pages; ?>" class="page-link <?php echo ($page == $total_pages) ? 'active' : ''; ?> "><?php echo $total_pages; ?></a>
  </li>
  <?php endif; ?>
  <?php endif; ?>
  <li class="page-item">
<a class="page-link <?php if ($page == $total_pages) echo 'disabled'; ?>" href="dashboard.php?sort=tid_up&page=<?php echo min($total_pages, $page + 1); ?>">
<i class="fas fa-angle-right"></i>
<span class="sr-only">Next</span>
</a>
</li>

  
  

</ul>
        </nav>
      </div>
    </div>
  </div>
</div>
<!-- Dark table -->
      <!-- Footer -->
      <footer style="margin-top:5%;" class="footer pt-0">
        <div class="row align-items-center justify-content-lg-between">
          <div class="col-lg-6">
            <div class="copyright text-center  text-lg-left  text-muted">
              &copy; 2020 <a href="https://crestprovidentb.com" class="font-weight-bold ml-1" target="_blank">CrestProvidentBank</a>
            </div>
          </div>
          <div class="col-lg-6">
            <ul class="nav nav-footer justify-content-center justify-content-lg-end">
              <li class="nav-item">
                <a href="https://crestprovidentb.com" class="nav-link" target="_blank">CrestProvidentBank</a>
              </li>
              <li class="nav-item">
                <a href="https://crestprovidentb.com/#about" class="nav-link" target="_blank">About Us</a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link" target="_blank">Blog</a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link" target="_blank">Nbank License</a>
              </li>
            </ul>
          </div>
        </div>
        <!-- GTranslate: https://gtranslate.io/ -->
<a href="#" onclick="doGTranslate('en|en');return false;" title="English" class="gflag nturl" style="background-position:-0px -0px;"><img src="//gtranslate.net/flags/blank.png" height="16" width="16" alt="English" /></a><a href="#" onclick="doGTranslate('en|fr');return false;" title="French" class="gflag nturl" style="background-position:-200px -100px;"><img src="//gtranslate.net/flags/blank.png" height="16" width="16" alt="French" /></a><a href="#" onclick="doGTranslate('en|de');return false;" title="German" class="gflag nturl" style="background-position:-300px -100px;"><img src="//gtranslate.net/flags/blank.png" height="16" width="16" alt="German" /></a><a href="#" onclick="doGTranslate('en|it');return false;" title="Italian" class="gflag nturl" style="background-position:-600px -100px;"><img src="//gtranslate.net/flags/blank.png" height="16" width="16" alt="Italian" /></a><a href="#" onclick="doGTranslate('en|pt');return false;" title="Portuguese" class="gflag nturl" style="background-position:-300px -200px;"><img src="//gtranslate.net/flags/blank.png" height="16" width="16" alt="Portuguese" /></a><a href="#" onclick="doGTranslate('en|ru');return false;" title="Russian" class="gflag nturl" style="background-position:-500px -200px;"><img src="//gtranslate.net/flags/blank.png" height="16" width="16" alt="Russian" /></a><a href="#" onclick="doGTranslate('en|es');return false;" title="Spanish" class="gflag nturl" style="background-position:-600px -200px;"><img src="//gtranslate.net/flags/blank.png" height="16" width="16" alt="Spanish" /></a>

<style type="text/css">
<!--
a.gflag {vertical-align:middle;font-size:16px;padding:1px 0;background-repeat:no-repeat;background-image:url(//gtranslate.net/flags/16.png);}
a.gflag img {border:0;}
a.gflag:hover {background-image:url(//gtranslate.net/flags/16a.png);}
#goog-gt-tt {display:none !important;}
.goog-te-banner-frame {display:none !important;}
.goog-te-menu-value:hover {text-decoration:none !important;}
body {top:0 !important;}
#google_translate_element2 {display:none!important;}
-->
</style>

<br /><select class="btn btn-dark" onchange="doGTranslate(this);"><option value="">Select Language</option><option value="en|af">Afrikaans</option><option value="en|sq">Albanian</option><option value="en|ar">Arabic</option><option value="en|hy">Armenian</option><option value="en|az">Azerbaijani</option><option value="en|eu">Basque</option><option value="en|be">Belarusian</option><option value="en|bg">Bulgarian</option><option value="en|ca">Catalan</option><option value="en|zh-CN">Chinese (Simplified)</option><option value="en|zh-TW">Chinese (Traditional)</option><option value="en|hr">Croatian</option><option value="en|cs">Czech</option><option value="en|da">Danish</option><option value="en|nl">Dutch</option><option value="en|en">English</option><option value="en|et">Estonian</option><option value="en|tl">Filipino</option><option value="en|fi">Finnish</option><option value="en|fr">French</option><option value="en|gl">Galician</option><option value="en|ka">Georgian</option><option value="en|de">German</option><option value="en|el">Greek</option><option value="en|ht">Haitian Creole</option><option value="en|iw">Hebrew</option><option value="en|hi">Hindi</option><option value="en|hu">Hungarian</option><option value="en|is">Icelandic</option><option value="en|id">Indonesian</option><option value="en|ga">Irish</option><option value="en|it">Italian</option><option value="en|ja">Japanese</option><option value="en|ko">Korean</option><option value="en|lv">Latvian</option><option value="en|lt">Lithuanian</option><option value="en|mk">Macedonian</option><option value="en|ms">Malay</option><option value="en|mt">Maltese</option><option value="en|no">Norwegian</option><option value="en|fa">Persian</option><option value="en|pl">Polish</option><option value="en|pt">Portuguese</option><option value="en|ro">Romanian</option><option value="en|ru">Russian</option><option value="en|sr">Serbian</option><option value="en|sk">Slovak</option><option value="en|sl">Slovenian</option><option value="en|es">Spanish</option><option value="en|sw">Swahili</option><option value="en|sv">Swedish</option><option value="en|th">Thai</option><option value="en|tr">Turkish</option><option value="en|uk">Ukrainian</option><option value="en|ur">Urdu</option><option value="en|vi">Vietnamese</option><option value="en|cy">Welsh</option><option value="en|yi">Yiddish</option></select><div id="google_translate_element2"></div>
<script type="text/javascript">
function googleTranslateElementInit2() {new google.translate.TranslateElement({pageLanguage: 'en',autoDisplay: false}, 'google_translate_element2');}
</script><script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit2"></script>


<script type="text/javascript">
/* <![CDATA[ */
eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('6 7(a,b){n{4(2.9){3 c=2.9("o");c.p(b,f,f);a.q(c)}g{3 c=2.r();a.s(\'t\'+b,c)}}u(e){}}6 h(a){4(a.8)a=a.8;4(a==\'\')v;3 b=a.w(\'|\')[1];3 c;3 d=2.x(\'y\');z(3 i=0;i<d.5;i++)4(d[i].A==\'B-C-D\')c=d[i];4(2.j(\'k\')==E||2.j(\'k\').l.5==0||c.5==0||c.l.5==0){F(6(){h(a)},G)}g{c.8=b;7(c,\'m\');7(c,\'m\')}}',43,43,'||document|var|if|length|function|GTranslateFireEvent|value|createEvent||||||true|else|doGTranslate||getElementById|google_translate_element2|innerHTML|change|try|HTMLEvents|initEvent|dispatchEvent|createEventObject|fireEvent|on|catch|return|split|getElementsByTagName|select|for|className|goog|te|combo|null|setTimeout|500'.split('|'),0,{}))
/* ]]> */
</script>
      </footer>

  
  <!-- Argon Scripts -->
<script>

  var myDate = new Date();
  var hrs = myDate.getHours();

  var greet;

  if (hrs < 12)
  greet = 'Good Morning<i class="fa fa-cloud-sun fa-3x"></i>';
  else if (hrs >=12 && hrs<17)
  greet = 'Good Afternoon<i class="fa fa-sun fa-3x fa-spin"></i>';
  else if (hrs >=17 && hrs <=24)
  greet = 'Good Evening <i class="fa fa-cloud-moon fa-3x"></i>';

  document.getElementById('lblGreetings').innerHTML ='<b>' + greet + '</b>'; 
</script>

  <!-- Core -->
  <script src="assets/vendor/jquery/dist/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/js-cookie/js.cookie.js"></script>
  <script src="assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
  <script src="assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
  <!-- Optional JS -->
  <script src="assets/vendor/chart.js/dist/Chart.min.js"></script>
  <script src="assets/vendor/chart.js/dist/Chart.extension.js"></script>
  <!-- Argon JS -->
  <script src="assets/js/argon.js?v=1.2.0"></script>
</body>

</html>
