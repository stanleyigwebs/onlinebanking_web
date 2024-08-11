<?php
    /* Avoid multiple sessions warning
    Check if session is set before starting a new one. */
    if(!isset($_SESSION)) {
        session_start();
    }

    include "validate_customer.php";
    include "connect.php";
    include "header.php";
    include "customer_navbar.php";
    include "customer_sidebar.php";

    if (isset($_SESSION['loggedIn_cust_id'])) {
      $id = $_SESSION['loggedIn_cust_id'];
    }
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
?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="transactions_style.css"> -->
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

    <!-- <div id="id01" class="modal">

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
    </div> -->




    <div class="header bg-primary pb-6">
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center py-4">
          <div class="col-lg-2 col-10">
              <h3 class=" text-white d-inline-block mb-0">Activity for: <?php echo $row0["account_no"]; ?></h3>
</div>
              <!-- <div class="col-lg-2 col-6">
                  <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                
                  <li>Filter : </li>
                  <li> <?php echo $filter_indicator ?></li>
                </ol>
              </nav>
            </div> -->
            <!-- <div class="col-lg-6 col-5 text-right">
        
            
                    <select class="btn btn-sm btn-neutral"name="by" onChange="window.location.href=this.value">
                        <option selected disabled hidden>
                            <?php if (empty($_GET['sort'])) {?>Tn. ID &darr;<?php } else { ?>
                                <?php if ($sort == 'tid_down') {?>Tn. ID &darr;<?php } ?>
                                <?php if ($sort == 'tid_up') {?>Tn. ID &uarr;<?php } ?>
                                <?php if ($sort == 'date_down') {?>Date &darr;<?php } ?>
                                <?php if ($sort == 'date_up') {?>Date &uarr;<?php } ?>
                            <?php } ?>
                        </option>
                        <option value="customer_transactions.php?sort=tid_down">Tn. ID &darr;</option>
                        <option value="customer_transactions.php?sort=tid_up">Tn. ID &uarr;</option>
                        <option value="customer_transactions.php?sort=date_down">Date &darr;</option>
                        <option value="customer_transactions.php?sort=date_up">Date &uarr;</option>
                    </select>
          
                    
              <a id="search" onclick="document.getElementById('id01').style.display='block'" class="btn btn-sm btn-neutral">Filters</a>
            </div> -->
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
              <a class="page-link <?php if ($page == 1) echo 'disabled'; ?>" href="customer_transactions.php?sort=tid_up&page=<?php echo max(1, $page - 1); ?>" tabindex="-1">
                <i class="fas fa-angle-left"></i>
                <span class="sr-only">Previous</span>
              </a>
            </li>
<!-- First few pages and last page -->
<?php if ($total_pages > 1): ?>
                  <li class="page-item">
                    <a href="customer_transactions.php?sort=tid_up&page=1" class="page-link <?php echo ($page == 1) ? 'active' : ''; ?> ">1</a>
                  </li>
              
                  <?php if ($total_pages > 2): ?>
                  <li class="page-item">
                    <a href="customer_transactions.php?sort=tid_up&page=2" class="page-link <?php echo ($page == 2) ? 'active' : ''; ?> ">2</a>
                  </li>
                  <?php endif; ?>
                  <?php if ($total_pages > 3): ?>
                  <li class="page-item">
                    <a href="customer_transactions.php?sort=tid_up&page=3" class="page-link <?php echo ($page == 3) ? 'active' : ''; ?> ">3</a>
                  </li>
<?php endif; ?>
                  <?php if ($total_pages > 4): ?>
                  <li class="page-item">
                    <a href="customer_transactions.php?sort=tid_up&page=<?php echo $total_pages; ?>" class="page-link <?php echo ($page == $total_pages) ? 'active' : ''; ?> "><?php echo $total_pages; ?></a>
                  </li>
                  <?php endif; ?>
                  <?php endif; ?>
                  <li class="page-item">
              <a class="page-link <?php if ($page == $total_pages) echo 'disabled'; ?>" href="customer_transactions.php?sort=tid_up&page=<?php echo min($total_pages, $page + 1); ?>">
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

    </div>
    <script>
    // Sticky search-bar
    $(document).ready(function() {
        var curr_scroll;

        $(window).scroll(function () {
            curr_scroll = $(window).scrollTop();

            if ($(window).scrollTop() > 120) {
                $("#the-search-bar").addClass('search-bar-fixed');

              if ($(window).width() > 855) {
                  $("#fi-search-bar").addClass('fi-search-bar-fixed');
              }
            }

            if ($(window).scrollTop() < 121) {
                $("#the-search-bar").removeClass('search-bar-fixed');

              if ($(window).width() > 855) {
                  $("#fi-search-bar").removeClass('fi-search-bar-fixed');
              }
            }
        });

        $(window).resize(function () {
            var class_name = $("#fi-search-bar").attr('class');

            if ((class_name == "flex-item-search-bar fi-search-bar-fixed") && ($(window).width() < 856)) {
                $("#fi-search-bar").removeClass('fi-search-bar-fixed');
            }

            if ((class_name == "flex-item-search-bar") && ($(window).width() > 855) && (curr_scroll > 120)) {
                $("#fi-search-bar").addClass('fi-search-bar-fixed');
            }
        });

        // Get the modal
        var modal = document.getElementById('id01');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    });
    </script>
  <script src="assets/vendor/jquery/dist/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/js-cookie/js.cookie.js"></script>
  <script src="assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
  <script src="assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
  <!-- Argon JS -->
  <script src="assets/js/argon.js?v=1.2.0"></script>
</body>
</html>
