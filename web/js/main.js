(function ($) {
	// USE STRICT
	"use strict";
    
	
	try {

		// doughut chart
		var ctx = document.getElementById("doughutChart");
		if (ctx) {
			ctx.height = 150;
			var myChart = new Chart(ctx, {
				type : 'doughnut',
				data : {
					datasets : [ {
						data : [ 45, 25, 20, 10 ],
						backgroundColor : [ "rgba(0, 123, 255,0.9)",
								"rgba(0, 123, 255,0.7)",
								"rgba(0, 123, 255,0.5)", "rgba(0,0,0,0.07)" ],
						hoverBackgroundColor : [ "rgba(0, 123, 255,0.9)",
								"rgba(0, 123, 255,0.7)",
								"rgba(0, 123, 255,0.5)", "rgba(0,0,0,0.07)" ]

					} ],
					labels : [ "Green", "Green", "Green", "Green" ]
				},
				options : {
					legend : {
						position : 'top',
						labels : {
							fontFamily : 'Poppins'
						}

					},
					responsive : true
				}
			});
		}

	} catch (error) {
		console.log(error);
	}

	try {

		// pie chart
		var ctx = document.getElementById("pieChart");
		if (ctx) {
			ctx.height = 200;
			var myChart = new Chart(ctx, {
				type : 'pie',
				data : {
					datasets : [ {
						data : [ 45, 25, 20, 10 ],
						backgroundColor : [ "rgba(0, 123, 255,0.9)",
								"rgba(0, 123, 255,0.7)",
								"rgba(0, 123, 255,0.5)", "rgba(0,0,0,0.07)" ],
						hoverBackgroundColor : [ "rgba(0, 123, 255,0.9)",
								"rgba(0, 123, 255,0.7)",
								"rgba(0, 123, 255,0.5)", "rgba(0,0,0,0.07)" ]

					} ],
					labels : [ "Green", "Green", "Green" ]
				},
				options : {
					legend : {
						position : 'top',
						labels : {
							fontFamily : 'Poppins'
						}

					},
					responsive : true
				}
			});
		}

	} catch (error) {
		console.log(error);
	}

	try {

		// polar chart
		var ctx = document.getElementById("polarChart");
		if (ctx) {
			ctx.height = 200;
			var myChart = new Chart(ctx, {
				type : 'polarArea',
				data : {
					datasets : [ {
						data : [ 15, 18, 9, 6, 19 ],
						backgroundColor : [ "rgba(0, 123, 255,0.9)",
								"rgba(0, 123, 255,0.8)",
								"rgba(0, 123, 255,0.7)", "rgba(0,0,0,0.2)",
								"rgba(0, 123, 255,0.5)" ]

					} ],
					labels : [ "Green", "Green", "Green", "Green" ]
				},
				options : {
					legend : {
						position : 'top',
						labels : {
							fontFamily : 'Poppins'
						}

					},
					responsive : true
				}
			});
		}

	} catch (error) {
		console.log(error);
	}

	try {

		// single bar chart
		var ctx = document.getElementById("singelBarChart");
		if (ctx) {
			ctx.height = 150;
			var myChart = new Chart(ctx, {
				type : 'bar',
				data : {
					labels : [ "Sun", "Mon", "Tu", "Wed", "Th", "Fri", "Sat" ],
					datasets : [ {
						label : "My First dataset",
						data : [ 40, 55, 75, 81, 56, 55, 40 ],
						borderColor : "rgba(0, 123, 255, 0.9)",
						borderWidth : "0",
						backgroundColor : "rgba(0, 123, 255, 0.5)"
					} ]
				},
				options : {
					legend : {
						position : 'top',
						labels : {
							fontFamily : 'Poppins'
						}

					},
					scales : {
						xAxes : [ {
							ticks : {
								fontFamily : "Poppins"

							}
						} ],
						yAxes : [ {
							ticks : {
								beginAtZero : true,
								fontFamily : "Poppins"
							}
						} ]
					}
				}
			});
		}

	} catch (error) {
		console.log(error);
	}

})(jQuery);

(function($) {
	// USE STRICT
	"use strict";
	$(".animsition")
			.animsition(
					{
						inClass : 'fade-in',
						outClass : 'fade-out',
						inDuration : 900,
						outDuration : 900,
						linkElement : 'a:not([target="_blank"]):not([href^="#"]):not([class^="chosen-single"])',
						loading : true,
						loadingParentElement : 'html',
						loadingClass : 'page-loader',
						loadingInner : '<div class="page-loader__spin"></div>',
						timeout : false,
						timeoutCountdown : 5000,
						onLoadEvent : true,
						browser : [ 'animation-duration',
								'-webkit-animation-duration' ],
						overlay : false,
						overlayClass : 'animsition-overlay-slide',
						overlayParentElement : 'html',
						transition : function(url) {
							window.location.href = url;
						}
					});

})(jQuery);
(function($) {
	// USE STRICT
	"use strict";

	// Map
	try {

		var vmap = $('#vmap');
		if (vmap[0]) {
			vmap.vectorMap({
				map : 'world_en',
				backgroundColor : null,
				color : '#ffffff',
				hoverOpacity : 0.7,
				selectedColor : '#1de9b6',
				enableZoom : true,
				showTooltip : true,
				values : sample_data,
				scaleColors : [ '#1de9b6', '#03a9f5' ],
				normalizeFunction : 'polynomial'
			});
		}

	} catch (error) {
		console.log(error);
	}

	// Europe Map
	try {

		var vmap1 = $('#vmap1');
		if (vmap1[0]) {
			vmap1.vectorMap({
				map : 'europe_en',
				color : '#007BFF',
				borderColor : '#fff',
				backgroundColor : '#fff',
				enableZoom : true,
				showTooltip : true
			});
		}

	} catch (error) {
		console.log(error);
	}

	// USA Map
	try {

		var vmap2 = $('#vmap2');

		if (vmap2[0]) {
			vmap2.vectorMap({
				map : 'usa_en',
				color : '#007BFF',
				borderColor : '#fff',
				backgroundColor : '#fff',
				enableZoom : true,
				showTooltip : true,
				selectedColor : null,
				hoverColor : null,
				colors : {
					mo : '#001BFF',
					fl : '#001BFF',
					or : '#001BFF'
				},
				onRegionClick : function(event, code, region) {
					event.preventDefault();
				}
			});
		}

	} catch (error) {
		console.log(error);
	}

	// Germany Map
	try {

		var vmap3 = $('#vmap3');
		if (vmap3[0]) {
			vmap3.vectorMap({
				map : 'germany_en',
				color : '#007BFF',
				borderColor : '#fff',
				backgroundColor : '#fff',
				onRegionClick : function(element, code, region) {
					var message = 'You clicked "' + region
							+ '" which has the code: ' + code.toUpperCase();

					alert(message);
				}
			});
		}

	} catch (error) {
		console.log(error);
	}

	// France Map
	try {

		var vmap4 = $('#vmap4');
		if (vmap4[0]) {
			vmap4.vectorMap({
				map : 'france_fr',
				color : '#007BFF',
				borderColor : '#fff',
				backgroundColor : '#fff',
				enableZoom : true,
				showTooltip : true
			});
		}

	} catch (error) {
		console.log(error);
	}

	// Russia Map
	try {
		var vmap5 = $('#vmap5');
		if (vmap5[0]) {
			vmap5.vectorMap({
				map : 'russia_en',
				color : '#007BFF',
				borderColor : '#fff',
				backgroundColor : '#fff',
				hoverOpacity : 0.7,
				selectedColor : '#999999',
				enableZoom : true,
				showTooltip : true,
				scaleColors : [ '#C8EEFF', '#006491' ],
				normalizeFunction : 'polynomial'
			});
		}

	} catch (error) {
		console.log(error);
	}

	// Brazil Map
	try {

		var vmap6 = $('#vmap6');
		if (vmap6[0]) {
			vmap6.vectorMap({
				map : 'brazil_br',
				color : '#007BFF',
				borderColor : '#fff',
				backgroundColor : '#fff',
				onRegionClick : function(element, code, region) {
					var message = 'You clicked "' + region
							+ '" which has the code: ' + code.toUpperCase();
					alert(message);
				}
			});
		}

	} catch (error) {
		console.log(error);
	}
})(jQuery);
(function($) {
	// Use Strict
	"use strict";
	try {
		var progressbarSimple = $('.js-progressbar-simple');
		progressbarSimple.each(function() {
			var that = $(this);
			var executed = false;
			$(window).on(
					'load',
					function() {

						that.waypoint(function() {
							if (!executed) {
								executed = true;
								/* progress bar */
								that
										.progressbar({
											update : function(
													current_percentage, $this) {
												$this.find('.js-value').html(
														current_percentage
																+ '%');
											}
										});
							}
						}, {
							offset : 'bottom-in-view'
						});

					});
		});
	} catch (err) {
		console.log(err);
	}
})(jQuery);
(function($) {
	// USE STRICT
	"use strict";

	// Scroll Bar
	try {
		var jscr1 = $('.js-scrollbar1');
		if (jscr1[0]) {
			const ps1 = new PerfectScrollbar('.js-scrollbar1');
		}

		var jscr2 = $('.js-scrollbar2');
		if (jscr2[0]) {
			const ps2 = new PerfectScrollbar('.js-scrollbar2');

		}

	} catch (error) {
		console.log(error);
	}

})(jQuery);
(function($) {
	// USE STRICT
	"use strict";

	// Select 2
	try {

		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		});

	} catch (error) {
		console.log(error);
	}

})(jQuery);
(function($) {
	// USE STRICT
	"use strict";

	// Dropdown
	try {
		var menu = $('.js-item-menu');
		var sub_menu_is_showed = -1;

		for (var i = 0; i < menu.length; i++) {
			$(menu[i]).on('click', function(e) {
				e.preventDefault();
				$('.js-right-sidebar').removeClass("show-sidebar");
				if (jQuery.inArray(this, menu) == sub_menu_is_showed) {
					$(this).toggleClass('show-dropdown');
					sub_menu_is_showed = -1;
				} else {
					for (var i = 0; i < menu.length; i++) {
						$(menu[i]).removeClass("show-dropdown");
					}
					$(this).toggleClass('show-dropdown');
					sub_menu_is_showed = jQuery.inArray(this, menu);
				}
			});
		}
		$(".js-item-menu, .js-dropdown").click(function(event) {
			event.stopPropagation();
		});

		$("body,html").on("click", function() {
			for (var i = 0; i < menu.length; i++) {
				menu[i].classList.remove("show-dropdown");
			}
			sub_menu_is_showed = -1;
		});

	} catch (error) {
		console.log(error);
	}

	var wW = $(window).width();
	// Right Sidebar
	var right_sidebar = $('.js-right-sidebar');
	var sidebar_btn = $('.js-sidebar-btn');

	sidebar_btn.on('click', function(e) {
		e.preventDefault();
		for (var i = 0; i < menu.length; i++) {
			menu[i].classList.remove("show-dropdown");
		}
		sub_menu_is_showed = -1;
		right_sidebar.toggleClass("show-sidebar");
	});

	$(".js-right-sidebar, .js-sidebar-btn").click(function(event) {
		event.stopPropagation();
	});

	$("body,html").on("click", function() {
		right_sidebar.removeClass("show-sidebar");

	});

	// Sublist Sidebar
	try {
		var arrow = $('.js-arrow');
		arrow.each(function() {
			var that = $(this);
			that.on('click', function(e) {
				e.preventDefault();
				that.find(".arrow").toggleClass("up");
				that.toggleClass("open");
				that.parent().find('.js-sub-list').slideToggle("250");
			});
		});

	} catch (error) {
		console.log(error);
	}

	try {
		// Hamburger Menu
		$('.hamburger').on('click', function() {
			$(this).toggleClass('is-active');
			$('.navbar-mobile').slideToggle('500');
		});
		$('.navbar-mobile__list li.has-dropdown > a').on('click', function() {
			var dropdown = $(this).siblings('ul.navbar-mobile__dropdown');
			$(this).toggleClass('active');
			$(dropdown).slideToggle('500');
			return false;
		});
	} catch (error) {
		console.log(error);
	}
})(jQuery);
(function($) {
	// USE STRICT
	"use strict";

	// Load more
	try {
		var list_load = $('.js-list-load');
		if (list_load[0]) {
			list_load.each(function() {
				var that = $(this);
				that.find('.js-load-item').hide();
				var load_btn = that.find('.js-load-btn');
				load_btn.on('click', function(e) {
					$(this).text("Loading...").delay(1500).queue(
							function(next) {
								$(this).hide();
								that.find(".js-load-item").fadeToggle("slow",
										'swing');
							});
					e.preventDefault();
				});
			})

		}
	} catch (error) {
		console.log(error);
	}

})(jQuery);
(function($) {
	// USE STRICT
	"use strict";

	try {

		$('[data-toggle="tooltip"]').tooltip();

	} catch (error) {
		console.log(error);
	}

	// Chatbox
	try {
		var inbox_wrap = $('.js-inbox');
		var message = $('.au-message__item');
		message.each(function() {
			var that = $(this);

			that.on('click',
					function() {
						$(this).parent().parent().parent().toggleClass(
								'show-chat-box');
					});
		});

	} catch (error) {
		console.log(error);
	}

})(jQuery);

//(function($) {
//
//	// This is the minimum zoom level that we'll allow
//	var minZoomLevel = 15;
//
//	var map = new google.maps.Map(document.getElementById('map'), {
//		zoom : minZoomLevel,
//		center : new google.maps.LatLng(18.9894, 73.1175),
//		mapTypeId : google.maps.MapTypeId.ROADMAP
//	});
//
//	// Bounds for North America
//	var strictBounds = new google.maps.LatLngBounds(new google.maps.LatLng(
//			18.930548, 73.098533), new google.maps.LatLng(19.045949, 73.122274));
//
//	// Listen for the dragend event
//	google.maps.event
//			.addListener(
//					map,
//					'dragend',
//					function() {
//						if (strictBounds.contains(map.getCenter()))
//							return;
//
//						// We're out of bounds - Move the map back within the
//						// bounds
//
//						var c = map.getCenter(), x = c.lng(), y = c.lat(), maxX = strictBounds
//								.getNorthEast().lng(), maxY = strictBounds
//								.getNorthEast().lat(), minX = strictBounds
//								.getSouthWest().lng(), minY = strictBounds
//								.getSouthWest().lat();
//
//						if (x < minX)
//							x = minX;
//						if (x > maxX)
//							x = maxX;
//						if (y < minY)
//							y = minY;
//						if (y > maxY)
//							y = maxY;
//
//						map.setCenter(new google.maps.LatLng(y, x));
//					});
//
//	// Limit the zoom level
//	google.maps.event.addListener(map, 'zoom_changed', function() {
//		if (map.getZoom() < minZoomLevel)
//			map.setZoom(minZoomLevel);
//	});
//    
//var locations = [{
//  "id": "1",
//  "category": "3",
//  "longitude": "73.11506056859241",
//  "latitude": "18.992875292439418",
//    "height":"234",
//    "width":"345",
//    "cost":"1234"
//}, {
//  "id": "2",
//  "category": "1",
//  "longitude": "73.0926444075169",
//  "latitude": "19.018370278564955",
//    "height":"456",
//    "width":"123",
//    "cost":"4546"
//}, {
//  "id": "3",
//  "category": "2",
//  "longitude": "73.10245567561833",
//  "latitude": "19.03680538978654",
//    "height":"213",
//    "width":"343",
//    "cost":"3455"
//}, {
//  "id": "4",
//  "category": "5",
//  "longitude": "73.1266942804566",
//  "latitude": "18.939534810877728",
//    "height":"435",
//    "width":"435",
//    "cost":"2345"
//}, {
//  "id": "5",
//  "category": "6",
//  "longitude": "73.1479872624268",
//  "latitude": "18.940833749098807",
//    "height":"456",
//    "width":"678",
//    "cost":"6578"
//}
//}, {
//  "id": "6",
//  "category": "6",
//  "campus_location": "D3",
//  "title": "Blumberg Hall",
//  "description": "<p>Blumberg Hall</p>",
//  "longitude": "-87.328321",
//  "latitude": "39.483388"
//}, {
//  "id": "7",
//  "category": "1",
//  "campus_location": "E1",
//  "title": "The Branam Innovation Center",
//  "description": "<p>The Branam Innovation Center</p>",
//  "longitude": "-87.322614",
//  "latitude": "39.48494"
//}, {
//  "id": "8",
//  "category": "6",
//  "campus_location": "G3",
//  "title": "Chi Omega Sorority",
//  "description": "<p>Chi Omega house</p>",
//  "longitude": "-87.319905",
//  "latitude": "39.482071"
//}, {
//  "id": "9",
//  "category": "3",
//  "campus_location": "D1",
//  "title": "Cook Stadium/Phil Brown Field",
//  "description": "<p>Cook Stadium at Phil Brown Field</p>",
//  "longitude": "-87.325258",
//  "latitude": "39.485007"
//}, {
//  "id": "10",
//  "category": "1",
//  "campus_location": "D2",
//  "title": "Crapo Hall",
//  "description": "<p>Crapo Hall</p>",
//  "longitude": "-87.324368",
//  "latitude": "39.483709"
//}, {
//  "id": "11",
//  "category": "6",
//  "campus_location": "G3",
//  "title": "Delta Delta Delta Sorority",
//  "description": "<p>Delta Delta Delta</p>",
//  "longitude": "-87.317477",
//  "latitude": "39.482951"
//}, {
//  "id": "12",
//  "category": "6",
//  "campus_location": "D2",
//  "title": "Deming Hall",
//  "description": "<p>Deming Hall</p>",
//  "longitude": "-87.325822",
//  "latitude": "39.483421"
//}, {
//  "id": "13",
//  "category": "5",
//  "campus_location": "F1",
//  "title": "Facilities Operations",
//  "description": "<p>Facilities Operations</p>",
//  "longitude": "-87.321782",
//  "latitude": "39.484916"
//}, {
//  "id": "14",
//  "category": "2",
//  "campus_location": "E3",
//  "title": "Flame of the Millennium",
//  "description": "<p>Flame of Millennium sculpture</p>",
//  "longitude": "-87.323306",
//  "latitude": "39.481978"
//}, {
//  "id": "15",
//  "category": "5",
//  "campus_location": "E2",
//  "title": "Hadley Hall",
//  "description": "<p>Hadley Hall</p>",
//  "longitude": "-87.324046",
//  "latitude": "39.482887"
//}, {
//  "id": "16",
//  "category": "2",
//  "campus_location": "F2",
//  "title": "Hatfield Hall",
//  "description": "<p>Hatfield Hall</p>",
//  "longitude": "-87.322340",
//  "latitude": "39.482146"
//}, {
//  "id": "17",
//  "category": "6",
//  "campus_location": "C2",
//  "title": "Hulman Memorial Union",
//  "description": "<p>Hulman Memorial Union</p>",
//  "longitude": "-87.32698",
//  "latitude": "39.483574"
//}, {
//  "id": "18",
//  "category": "1",
//  "campus_location": "E2",
//  "title": "John T. Myers Center for Technological Research with Industry",
//  "description": "<p>John T. Myers Center for Technological Research With Industry</p>",
//  "longitude": "-87.322984",
//  "latitude": "39.484063"
//}, {
//  "id": "19",
//  "category": "6",
//  "campus_location": "A2",
//  "title": "Lakeside Hall",
//  "description": "<p></p>",
//  "longitude": "-87.330612",
//  "latitude": "39.482804"
//}, {
//  "id": "20",
//  "category": "6",
//  "campus_location": "F2",
//  "title": "Lambda Chi Alpha Fraternity",
//  "description": "<p>Lambda Chi Alpha</p>",
//  "longitude": "-87.320999",
//  "latitude": "39.48305"
//}
//];
    
//    for (i = 0; i < locations.length; i++) {
//        placeMarker(map, new google.maps.LatLng(locations[i].latitude, locations[i].longitude));
//    }
//
//    marker.addListener('click', function(event){
//        var height = document.getElementById('height');
//        var width = document.getElementById('width');
//        var cost = document.getElementById('cost');
//    
//        for (i = 0; i < locations.length; i++) {
//            if(new google.maps.LatLng(locations[i].latitude, locations[i].longitude) == event.latLng)
//                height.value = locations[i].height;
//                width.value = locations[i].width;
//                cost.value = locations[i].cost;
//        }
//    });
////	google.maps.event.addListener(map, 'click', function(event) {
////		placeMarker(map, event.latLng);
////	});
////    
//    
//})(jQuery);

//function placeMarker(map, location) {
//	var marker = new google.maps.Marker({
//		position : location,
//		map : map
//	});
//
//}