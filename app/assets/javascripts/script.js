$(function(){
  var isPhone = false,
      isTablet = false,
      isDesktop = false;
  $(window).width() < 481 ? $("body").addClass("mobile") : $(window).width() < 1025 ? $("body").addClass("tablet") : $("body").addClass("desktop");
  $(window).width() < 481 ? isPhone = true : $(window).width() < 1025 ? isTablet = true : isDesktop = true;
  $("#page, #overlay").height($(document).height());
  $(".homewrap").height($(window).height());
  //$(".background").css("left", ($(window).width()/2-$(".background").width()/2)+"px");
  $("#figures").smartImagemap();
  
  var imgWidth = 1674,
      imgHeight = 1679,
      space = 627,
      dist = 1052,
      fWidth = 1173,
      fHeight = 851;
  
  
  	$("#figures").width($(window).width());
    $("#figures").trigger('smartimagemap.update');
    var percent = $(window).width()/1674;
    var newHeight = imgHeight*percent;
    var ratio = newHeight/imgHeight;
    var newSpace = space*ratio;
    var newDist = dist*ratio;
    var offset = $(window).height()-newDist;
    $("#figures").css("top", offset+"px");
    $(".foreground").width(fWidth*percent);
    $(".foreground").height(fHeight*percent);
  
  
  $(".foreground").css("left", ($(window).width()/2-$(".foreground").width()/2)+"px");
//hover
  var background = $("#figures"),
      imageOffset = background.position();
  $("area").hover(function(e){
  
    var area = $(this),
        offset = $(this).areaOffset(true),
        menuOffset = {
        	left: imageOffset.left + offset.left,
        	top: imageOffset.top + offset.top
        };
    //$(".line").offset(menuOffset).show();
    
    
  	var top = $(this).areaOffset().top + $("#figures").offset().top;
  	var left = $(this).areaOffset(true).left + $("#figures").offset().left;
  	var lHeight = 350,
        nWidth = 200,
        nLeft = -99;
  	switch($(this).attr("href")){
  		case "http://en.wikipedia.org/wiki/2011_Yemeni_revolution":
        top += 0;
        left += 6;
        lHeight -= 231;
        break;
      case "http://en.wikipedia.org/wiki/Socrates":
        top += 3;
        left -= 14;
        lHeight -= 167;
        break;
      case "http://en.wikipedia.org/wiki/Gustave_Courbet":
        top += 4;
        left -= 6;
        lHeight += 173;
        break;
      case "http://en.wikipedia.org/wiki/Emiliano_Zapata":
        top += 32;
        left -= 85;
        lHeight += 2;
        break;
      case "http://en.wikipedia.org/wiki/Harry_Hay":
        top += 0;
        left += 0;
        lHeight -= 106;
        break;
      case "http://en.wikipedia.org/wiki/Emile_Zola":
        top -= 1;
        left -= 4;
        lHeight -= 120;
        break;
      case "http://en.wikipedia.org/wiki/Aung_San_Suu_Kyi":
        top += 0;
        left -= 5;
        lHeight += 31;
        break;
      case "http://en.wikipedia.org/wiki/Ellen_Johnson_Sirleaf":
        top += 1;
        left -= 17;
        lHeight -= 80;
        break;
      case "http://en.wikipedia.org/wiki/Subcomandante_Marcos":
        top += 0;
        left += 43;
        lHeight -= 46;
        break;
      case "http://en.wikipedia.org/wiki/Vladimir_Mayakovsky":
        top += 7;
        left += 11;
        lHeight -= 115;
        break;
      case "http://en.wikipedia.org/wiki/Thomas_Paine":
        top += 0;
        left += 0;
        lHeight -= 162;
        break;
      case "http://en.wikipedia.org/wiki/Harvey_Milk":
        top += 1;
        left -= 12;
        lHeight -= 19;
        break;
      case "http://en.wikipedia.org/wiki/Angela_Davis":
        top -= 2;
        left += 10;
        lHeight -= 142;
        break;
      case "http://www.imdb.com/name/nm2397652/bio":
        top += 9;
        left -= 30;
        lHeight += 75;
        break;
      case "https://en.wikipedia.org/wiki/Desmond_Tutu":
        top += 0;
        left += 51;
        lHeight -= 38;
        break;
      case "http://en.wikipedia.org/wiki/Larry_Kramer":
        top -= 2;
        left += 23;
        lHeight -= 54;
        break;
      case "http://en.wikipedia.org/wiki/Chen_Guangcheng":
        top += 32;
        left += 69;
        lHeight += 90;
        break;
      case "http://en.wikipedia.org/wiki/French_Revolution":
        top += 10;
        left += 9;
        lHeight -= 252;
        break;
      case "http://en.wikipedia.org/wiki/Lesbian_Avengers":
        top -= 2;
        left += 9;
        lHeight -= 26;
        break;
      case "http://en.wikipedia.org/wiki/Pussy_Riot":
        top += 0;
        left += 13;
        lHeight -= 133;
        break;
      case "http://en.wikipedia.org/wiki/Arab_Spring":
        top += 7;
        left -= 35;
        lHeight -= 113;
        nWidth += 40;
        nLeft -= 20;
        break;
      case "https://en.wikipedia.org/wiki/American_Revolution":
        top += 34;
        left += 65;
        lHeight -= 150;
        break;
      case "http://en.wikipedia.org/wiki/Suffragette":
        top += 22;
        left -= 30;
        lHeight -= 159;
        break;
      case "https://en.wikipedia.org/wiki/ACT_UP":
        top += 39;
        left -= 22;
        lHeight -= 174;
        break;
      case "https://en.wikipedia.org/wiki/Black_Panther_Party":
        top += 24;
        left -= 15;
        lHeight -= 131;
        break;
      case "http://en.wikipedia.org/wiki/Stonewall_riots":
        top += 29;
        left += 13;
        lHeight -= 200;
        break;
      case "http://en.wikipedia.org/wiki/Julian_Assange":
        top += 0;
        left += 0;
        lHeight -= 153;
        break;
      case "https://en.wikipedia.org/wiki/Occupy_Wall_Street":
        top += 0;
        left -= 3;
        lHeight -= 215;
        break;
      case "http://en.wikipedia.org/wiki/Young_Lords":
        top -= 1;
        left += 3;
        lHeight -= 184;
        break;
      case "http://en.wikipedia.org/wiki/Jose_Sarria":
        top += 1;
        left += 5;
        lHeight -= 241;
        break;
      case "http://en.wikipedia.org/wiki/American_Indian_Movement":
        top += 70;
        left -= 37;
        lHeight -= 177;
        nWidth += 20;
        nLeft += 10;
        break;
      case "http://en.wikipedia.org/wiki/Eight-hour_day":
        top += 3;
        left += 11;
        lHeight -= 82;
        break;
      case "http://en.wikipedia.org/wiki/Wounded_Knee_incident":
        top += 55;
        left += 30;
        lHeight -= 200;
  	}
  	var thing = $(this).attr("href");
  	$(".name").html(thing.split("Yemeni").length > 1 ? "Bread Helmet Man" : thing.split("imdb").length > 1 ? "Peter Staley" : thing.split("Lesbian").length > 1 ? "Maxine Wolfe" : thing.split("Arab").length > 1 ? "Democracy in the Middle East" : thing.split("Suffragette").length > 1 ? "The Suffragettes" : thing.replace("http://en.wikipedia.org/wiki/", "").replace("https://en.wikipedia.org/wiki/", "").replace(/_/g, " ")).css({"width":nWidth,"left":nLeft});
  	$(".line").css({'height': lHeight, 'bottom': 'auto', 'top': (top-lHeight), 'left': left, 'display': 'block'});
  	
  });
  
//show fb/twitter
	$("#twitter, #facebook").click(function(e){
		$(".footer-content").toggle();
		return false;
	});
//set tweet/fbid/action
  $(".twitter-action a").click(function(e){
  	var id = $(this).data("id");
  	var action = $(this).data("action");
  	$.cookie("tweet_action", action);
  	$.cookie("tweet_id", id);
  });
  $(".fb-action").click(function(e){
  	var id = $(this).data("id");
  	var action = $(this).data("action");
  	$.cookie("fb_action", action);
  	$.cookie("fb_id", id);
  });
//email
  $("#email_address").focus(function(){
  	if($(this).val() == "Enter your email here"){
      $(this).val("");
    }
  }).blur(function(){
  	if($(this).val() == ""){
      $(this).val("Enter your email here");
    }
  });
  $("#email_address").keyup(function(e){
  	if(e.keyCode == 13){
      var email = $("#email_address").val();
  		$.post("/secret-email", {email: email}, function(){$("#email_address").val("Email Sent!")});
  	}
  });
//video controls/position
  if($(window).width()-$(".content").width() < 400){
    var vwidth = $(".content").width()-400;	
  } else {
  	var vwidth = $(".content").width();
  }
  var vheight = vwidth*.55;
	$(".video-container .video").width(vwidth).height(vheight);
	$(".video-container .video-overlay").width(vwidth).height(vheight);
	$("#play, #pause").height(vheight-40);
	$(".video-container .video-overlay").css("left", (($(".content").width()/2)-(vwidth/2)));
	if(isTablet){
		$(".video-container .video").height($(".video-container .video").height()+200);
		$(".video-container .video").width($(".video-container .video").width()+200);
	}
  $(".video-container .video").fitVids();
  $("#play, #play-btn").click(function(e){
  	e.preventDefault();
  	$(this).css("z-index", "7");
  	$("#pause-btn").css("z-index", "9");
  });
  $("#pause, #pause-btn").click(function(e){
  	e.preventDefault();
  	$(this).css("z-index", "7");
  	$("#play-btn").css("z-index", "9");
  });
//datepickers
  $('#event-start_datetimepicker, #event-end_datetimepicker, #release-publish_date_datetimepicker, #coverage-publish_date_datetimepicker').datetimepicker({
    language: "en",
    pick12HourFormat: true
  });
//press window switch
  $(".col.press .header a").click(function(e){
  	var it = $(this).data("it");
  	$(".selected").removeClass("selected");
  	$(this).addClass("selected");
  	$(".press-container").hide();
  	$("."+it+"-container").show();
  	return false;
  });
//modal fix
  $('.modal').appendTo($("body"));
//secret content
  $("#secret_password").keyup(function(e){
  	if(e.keyCode == 13){
      var password = $("#secret_password").val();
  		$.post("/secret-password", {password: password}, function(){});
  	}
  });
//secret selection
  $(".secrets-list a, .secrets .title a").click(function(e){
  	var id = $(this).data("id");
  	$.post("/secret-selection", {id: id}, function(){});
  	return false;
  });
});

$(window).resize(function(){
	$("#page, #overlay").height($(document).height());
  $(".homewrap").height($(window).height());
  
  $(".line").hide();
  
  var imgWidth = 1674,
      imgHeight = 1679,
      space = 627,
      dist = 1052,
      fWidth = 1173,
      fHeight = 851;
  
  
  	$("#figures").width($(window).width());
    $("#figures").trigger('smartimagemap.update');
    var percent = $(window).width()/1674;
    var newHeight = imgHeight*percent;
    var ratio = newHeight/imgHeight;
    var newSpace = space*ratio;
    var newDist = dist*ratio;
    var offset = $(window).height()-newDist;
    $("#figures").css("top", offset+"px");
    $(".foreground").width(fWidth*percent);
    $(".foreground").height(fHeight*percent);
  
  
  $(".foreground").css("left", ($(window).width()/2-$(".foreground").width()/2)+"px");
  
  if($(window).width()-$(".content").width() < 400){
    var vwidth = $(".content").width()-400;	
  } else {
  	var vwidth = $(".content").width();
  }
  var vheight = vwidth*.55;
	$(".video-container .video").width(vwidth).height(vheight);
	$(".video-container .video-overlay").width(vwidth).height(vheight);
	$("#play, #pause").height(vheight-40);
	$(".video-container .video-overlay").css("left", (($(".content").width()/2)-(vwidth/2)));
  $(".video-container .video").fitVids();
  
  
});