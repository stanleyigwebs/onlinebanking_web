
$(document).ready(function(){$(".cookie-disclaimer").show();
$(".closeButtonImage").click(function(){a()
});
function a(){var b=$("#navSection a, [role=naviagtion] a").first();
$(".cookie-disclaimer").hide();
if(b.length){b.focus()
}}});
$(document).ready(function(){$("a>span.blueBtn, a>span.redBtn").each(function(d){var a=$(this);
var c=a.attr("class");
var b=a.parent();
var e=b.attr("href");
var f=b.attr("aria-label");
if(!f){f=b.attr("title")
}if(f){f=" aria-label = '"+f+"' "
}b.replaceWith(function(){return $("<button onclick=location.href='"+e+"'; class='"+c+"'"+f+"><span class='pAlternative'>"+$(this).text()+"</span></button>")
})
});
$("span.redBtn>a, span.blueBtn>a").each(function(d){var b=$(this);
var a=b.parent();
var c=a.attr("class");
var e=b.attr("href");
var f=b.attr("aria-label");
if(!f){f=b.attr("title")
}if(f){f=" aria-label = '"+f+"' "
}a.replaceWith(function(){return $("<button onclick=location.href='"+e+"'; class='"+c+"'"+f+"><span class='pAlternative'>"+$(this).text()+"</span></button>")
})
})
});
jQuery(document).ready(function(){var a="&copy;&nbsp"+new Date().getFullYear();
if($("span.dynamicYear")){$("span.dynamicYear").replaceWith(a)
}});
$(function speedBumpFunctionality(){var documentBody=$("body"),nonModalContent=$(".USBContent"),speedBump=$("#speedBumpModal"),speedBumpTabs=speedBump.find("a, button, [tabindex]"),closeButton=speedBump.find(".close"),continueButton=speedBump.find("#continue"),externalLinks,returnToLink;
if(speedBump.length>0){var urlvalue=$('[id="urlpath"]').data("urlpath"),otherurlvalue=$('[id="otherurlpath"]').data("otherurlpath"),hostnameurl=" a.hostname !== window.location.hostname",urlresult="";
for(i=0;
i<urlvalue.length;
i++){urlresult=urlresult+" && !a.href.match("+urlvalue[i].urlPath+")";
if(i===urlvalue.length-1){urlresult=hostnameurl+otherurlvalue+urlresult
}}$.expr[":"].external=function(a){var result=eval(urlresult),url=a.href;
if(result){$(a).attr({"data-ext-link":url,href:"#"}).addClass("externalLink")
}return result
};
externalLinks=$("a:external");
if(externalLinks.length>0){externalLinks.on("click",function(event){event.preventDefault();
speedBump.modal("show").focus();
continueButton.attr({href:$(event.currentTarget).data("ext-link"),target:"_blank","data-ext-link":null})
})
}speedBump.on("hide.bs.modal hidden.bs.modal show.bs.modal shown.bs.modal",function(event){switch(event.type){case"hide":speedBump.attr({"aria-label":"Popup window has disappeared","aria-hidden":true});
break;
case"hidden":returnToLink=$('a[data-ext-link="'+continueButton.attr("href")+'"]');
nonModalContent.attr({"aria-hidden":null});
returnToLink.focus();
break;
case"show":speedBump.attr({"aria-label":"Popup window has appeared","aria-hidden":null});
documentBody.css({position:"inherit"});
break;
case"shown":nonModalContent.attr({"aria-hidden":true});
closeButton.focus();
break;
default:break
}});
continueButton.on("click keypress",function(event){var keyPressed=(event.key||event.which||event.keyCode);
switch(event.type){case"click":event.preventDefault();
window.open(event.currentTarget.href);
break;
case"keypress":switch(keyPressed){case"Enter":case"Spacebar":case"Space":case" ":case 32:case 13:event.preventDefault();
continueButton.click();
break;
default:break
}break;
default:break
}});
speedBumpTabs.on("keydown",function(event){var keyPressed=(event.key||event.which||event.keyCode),firstTab=speedBumpTabs.filter(":visible").first(),lastTab=speedBumpTabs.filter(":visible").last();
switch(keyPressed){case"Tab":case 9:if(firstTab.is(document.activeElement)&&event.shiftKey){event.preventDefault();
lastTab.focus()
}if(lastTab.is(document.activeElement)&&!event.shiftKey){event.preventDefault();
firstTab.focus()
}default:break
}})
}});