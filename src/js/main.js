const App = {
	SetBackground: () => {
		$("[setBackground]").each(function() {
			var background = $(this).attr("setBackground");
			$(this).css({
				"background-image": "url(" + background + ")",
				"background-size": "cover",
				"background-position": "center center"
			});
		});
		$("[setBackgroundRepeat]").each(function() {
			var background = $(this).attr("setBackgroundRepeat");
			$(this).css({
				"background-image": "url(" + background + ")",
				"background-repeat": "repeat"
			});
		});
	},
	EqualHeightElement: el => {
		let height = 0;
		let thisHeight = 0;
		$(el).each(function() {
			thisHeight = $(this).height();
			if (thisHeight > height) {
				height = thisHeight;
			}
		});
		$(el).height(height);
	},
	GetUrl: () => {
		return window.location.href;
	},
	AddUrlToShareButton: () => {
		if ($(".product-social .fb").length) {
			$(".product-social .fb").attr(
				"href",
				"https://www.facebook.com/sharer/sharer.php?u=" + App.GetUrl()
			);
		}
		if ($(".product-social .zalo").length) {
			$(".product-social .zalo").attr("data-href", App.GetUrl());
		}
	}
};
const Header = {
	LanguageWrapper: () => {
		$(".language-wrapper .language-active").on("click", function(e) {
			$(this)
				.parents(".language-wrapper")
				.toggleClass("active");
			$("header .searchbox").removeClass("active");
			$(".vt-header .user-wrapper").removeClass("active");
			$("html").one("click", function() {
				$(".language-wrapper").removeClass("active");
			});
			e.stopPropagation();
		});
	},
	ToggleMenuMobile: () => {
		$("header .toggle-button").on("click", function() {
			$(this).toggleClass("active");
			// $('header .list-page-top').toggleClass('active')
			$("header .mobile-wrapper").toggleClass("active");
			$(".nav-mega-menu-wrapper").removeClass("active");
			$("body").removeClass("is-hidden");

			// $('header .navigation-zone-child-wrapper').removeClass('active')
			// $('header .backdrop-wrapper').fadeToggle(400)
		});
	},
	ToggleUserWrapper: () => {
		$(".vt-header .user-wrapper").on("click", function(e) {
			$(this).toggleClass("active");
			$("header .searchbox").removeClass("active");
			$("header .language-wrapper").removeClass("active");
			$("html").one("click", function() {
				$(".vt-header .user-wrapper").removeClass("active");
			});
			e.stopPropagation();
		});
	},
	SearchBoxMobile: () => {
		$(".vt-header .search-icon").on("click", function(e) {
			$(this)
				.parent()
				.find(".searchbox")
				.toggleClass("active");
			$("header .language-wrapper").removeClass("active");
			$(".vt-header .user-wrapper").removeClass("active");
			e.stopPropagation();
		});
	},
	MobileMapping: () => {
		return {
			ListPageLeft: new MappingListener({
				selector: ".vt-header .list-page-left",
				mobileWrapper: ".vt-header .mobile-wrapper",
				mobileMethod: "appendTo",
				desktopWrapper: ".vt-header .left-wrapper",
				desktopMethod: "appendTo",
				breakpoint: 1025
			}).watch(),
			ListPageRight: new MappingListener({
				selector: ".vt-header .list-page-right",
				mobileWrapper: ".vt-header .mobile-wrapper",
				mobileMethod: "appendTo",
				desktopWrapper: ".vt-header .right-wrapper",
				desktopMethod: "prependTo",
				breakpoint: 1025
			}).watch(),
			SearchBox: new MappingListener({
				selector: ".vt-header .searchbox",
				mobileWrapper: ".vt-header .mobile-wrapper",
				mobileMethod: "appendTo",
				desktopWrapper: ".vt-header .search-wrapper",
				desktopMethod: "appendTo",
				breakpoint: 1025
			}).watch()
		};
	},
	Init: () => {
		Header.LanguageWrapper();
		Header.ToggleMenuMobile();
		Header.MobileMapping();
		Header.SearchBoxMobile();
		Header.ToggleUserWrapper();
	}
};
const Slider = {
	HomeBanner: () => {
		return new Swiper(".vt-banner .swiper-container", {
			autoplay: {
				delay: 4000
			},
			speed: 1000,
			pagination: {
				el: ".vt-banner .swiper-pagination",
				clickable: true,
				renderBullet: function(index, className) {
					return `<span class="swiper-pagination-bullet"><img src='/Data/Sites/1/media/img/page-ic.png'></img></span>`;
				}
			}
		});
	},
	MainBanner: () => {
		return new Swiper(".vt-main-banner .swiper-container", {
			autoplay: {
				delay: 4000
			},
			speed: 1000
		});
	},
	HomeProductSlider: () => {
		return new Swiper(".swiper-home-product-1.swiper-container", {
			slidesPerView: 5,
			observer: true,
			observeParents: true,
			autoplay: {
				delay: 4000
			},
			navigation: {
				nextEl: ".zone-product-home-next-1",
				prevEl: ".zone-product-home-prev-1"
			},

			speed: 1000,
			breakpoints: {
				1024: {
					slidesPerView: 4
				},
				768: {
					slidesPerView: 3
				},
				576: {
					slidesPerView: 2
				}
			}
		});
	},
	HomeProductSlider2: () => {
		return new Swiper(".swiper-home-product-2.swiper-container", {
			slidesPerView: 5,
			observer: true,
			observeParents: true,
			autoplay: {
				delay: 4000
			},
			navigation: {
				nextEl: ".zone-product-home-next-2",
				prevEl: ".zone-product-home-prev-2"
			},

			speed: 1000,
			breakpoints: {
				1024: {
					slidesPerView: 4
				},
				768: {
					slidesPerView: 3
				},
				576: {
					slidesPerView: 2
				}
			}
		});
	},
	HomeWhyUs: () => {
		return new Swiper(".vt-home-3 .swiper-container", {
			slidesPerView: 4,
			spaceBetween: 80,
			autoplay: {
				delay: 4000
			},
			speed: 1000,
			breakpoints: {
				1200: {
					spaceBetween: 30,
					slidesPerView: 3
				},
				768: {
					spaceBetween: 30,
					slidesPerView: 2
				},
				460: {
					spaceBetween: 30,
					slidesPerView: 1
				}
			}
		});
	},
	HomeNewsSlider: () => {
		return new Swiper(".vt-home-4 .swiper-container", {
			slidesPerView: 3,
			spaceBetween: 30,
			autoplay: {
				delay: 4000
			},
			speed: 1000,
			breakpoints: {
				768: {
					slidesPerView: 2
				},
				460: {
					slidesPerView: 1
				}
			}
		});
	},
	Init: () => {
		Slider.HomeBanner();
		Slider.HomeProductSlider();
		Slider.HomeProductSlider2();
		Slider.HomeWhyUs();
		Slider.HomeNewsSlider();
		Slider.MainBanner();
	}
};
const Page = {
	ToggleCategoryListMobile: () => {
		$(".vt-home-1 .category-heading").on("click", function() {
			$(this)
				.siblings()
				.slideToggle(1000);
		});
	},
	ToggleProductChildZoneMega: () => {
		$(
			".product-status-content-item-mega .product-child-mobile-toggle-mega"
		).on("click", function() {
			$(this)
				.next()
				.slideToggle(1000);

			$(".product-child-tab-mega .product-child-tab-item-mega").on(
				"click",
				function() {
					$(this)
						.parent()
						.slideUp();
				}
			);
		});
	},
	ToggleProductChildZone: () => {
		$(".product-child-mobile-toggle").on("click", function() {
			$(this)
				.siblings(".product-child-tab")
				.slideToggle(1000);
			$(".vt-home-2 .product-child-tab .product-child-tab-item").on(
				"click",
				function() {
					$(this)
						.parent()
						.slideUp();
				}
			);
		});
		$(".vt-zone-navigation .toggle-mobile").on("click", function() {
			$(this)
				.siblings(".list-item")
				.slideToggle(1000);
		});
	},
	HomeProductTab: () => {
		$(".product-status-tab .product-status-tab-item").on(
			"click",
			function() {
				let active = $(this).attr("data-status");
				$(this)
					.parents("section")
					.find(".product-status-tab-item")
					.removeClass("active");
				$(this).addClass("active");
				$(this)
					.parents("section")
					.find(".product-status-content-item")
					.removeClass("active");
				$(this)
					.parents("section")
					.find(
						".product-status-content-item[data-status=" +
							active +
							"]"
					)
					.addClass("active");
				Slider.HomeProductSlider();
			}
		);
		$(".product-child-tab .product-child-tab-item").on("click", function() {
			let active = $(this).attr("data-child");
			$(this)
				.parents("container")
				.find(".product-child-tab-item")
				.removeClass("active");
			$(this).addClass("active");
			$(this)
				.parents("container")
				.find(".product-child-content-item")
				.removeClass("active");
			$(this)
				.parents("container")
				.find(".product-child-content-item[data-child=" + active + "]")
				.addClass("active");

			Slider.HomeProductSlider();
		});
		// $(".product-status-tab .product-status-tab-item:first-child").trigger(
		// 	"click"
		// );
		// $(".product-child-tab .product-child-tab-item:first-child").trigger(
		// 	"click"
		// );
	},
	Init: () => {
		Page.ToggleCategoryListMobile();
		Page.ToggleProductChildZoneMega();
		Page.ToggleProductChildZone();
		Page.HomeProductTab();
	}
};
$(document).ready(function() {
	App.SetBackground();
	Header.Init();
	Page.Init();
	Slider.Init();
	App.EqualHeightElement(".vt-home-1 .category-item h5");
	App.EqualHeightElement(".vt-home-2 .product-child-content figure .image");
	App.EqualHeightElement(
		".vt-home-2 .product-child-content figure figcaption"
	);
	App.EqualHeightElement(".vt-home-3 figure figcaption");
	App.EqualHeightElement(".vt-home-4 .item figure figcaption");
	//Exit Mega menu mobile
	$(".exit-mega-wrapper").on("click", function() {
		$(this)
			.parents(".nav-mega-menu-wrapper")
			.removeClass("active");
		$("body").removeClass("is-hidden");
		// $(".nav-mega-menu-wrapper").removeClass("active");
	});
	if ($(window).width() < 1025) {
		$(".vt-header .list-page").fadeIn(function() {
			$(".list-page").css({
				display: "flex"
			});
		});
	}
	$(".lightgallery").lightGallery({
		thumbnail: true
	});
	breadcrumbTitle();
	swiperInit();
	tabActive();
	tabActiveHomeProduct();
	toggleApplyForm();
	toggleMega();
	hideAccountIcon();
});

//My custom javascript BEgin here

$(window).resize(function() {
	hideAccountIcon();
});
function hideAccountIcon() {
	if ($(window).width() > 1200) {
		if ($(".user-wrapper .user-toggle-wrapper li").hasClass("firstnav")) {
			$(".user-wrapper em").css({
				display: "none"
			});
		}
	} else {
		$(".user-wrapper em").css({
			display: "block"
		});
	}
}

//BreadcrumbTitle
function breadcrumbTitle() {
	let child = $(".global-breadcrumb ol li").length;
	if (child > 2) {
		let breadcrumbValue = $(".global-breadcrumb ol li:nth-child(3)").text();
		$(".global-breadcrumb h1").html(breadcrumbValue);
	} else {
		let breadcrumbValue = $(".global-breadcrumb ol li:nth-child(2)").text();
		$(".global-breadcrumb h1").html(breadcrumbValue);
	}
}
function toggleMega() {
	$(".list-page-left ul li:nth-child(3) a").on("click", function() {
		$(".nav-mega-menu-wrapper").toggleClass("active");
		if ($(".nav-mega-menu-wrapper").hasClass("active")) {
			$("body").toggleClass("is-hidden");
		} else {
			$("body").removeClass("is-hidden");
		}
	});
}
function swiperInit() {
	var mySwiper = new Swiper(".swiper-container.news-swiper", {
		// Optional parameters
		loop: true,
		navigation: {
			nextEl: ".news-button-next",
			prevEl: ".news-button-prev"
		}
	});
	var brand = new Swiper(".history-swiper-wrapper .swiper-container", {
		// Optional parameters
		loop: false,
		spaceBetween: 90,

		navigation: {
			nextEl: ".history-navigation-next",
			prevEl: ".history-navigation-prev"
		},
		breakpointsInverse: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 1
			},
			400: {
				slidesPerView: 1.2
			},
			576: {
				slidesPerView: 2
			},

			// when window width is >= 640px
			1200: {
				slidesPerView: 4
			},
			// when window width is >= 640px
			1441: {
				slidesPerView: 4.5
			}
		}
	});
	var partner = new Swiper(".about-us-partner-wrapper .swiper-container", {
		// Optional parameters
		loop: false,
		spaceBetween: 60,

		navigation: {
			nextEl: ".partner-navigation-next",
			prevEl: ".partner-navigation-prev"
		},
		breakpointsInverse: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 1
			},
			400: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 3
			},

			// when window width is >= 640px
			1200: {
				slidesPerView: 4
			},
			// when window width is >= 640px
			1441: {
				slidesPerView: 5
			}
		}
	});
	var brand = new Swiper(".product-brand-wrapper .swiper-container", {
		// Optional parameters
		loop: false,
		spaceBetween: 20,
		breakpointsInverse: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 3
			},

			// when window width is >= 640px
			1025: {
				slidesPerView: 4
			},
			// when window width is >= 640px
			1441: {
				slidesPerView: 5
			}
		}
	});
	var galleryThumbs = new Swiper(
		".product-thumbs-wrapper .swiper-container",
		{
			spaceBetween: 20,
			slidesPerView: 3,
			freeMode: true,
			watchSlidesVisibility: true,
			watchSlidesProgress: true
		}
	);
	var galleryTop = new Swiper(".product-top-wrapper .swiper-container", {
		spaceBetween: 10,
		effect: "fade",
		fadeEffect: {
			crossFade: true
		},
		thumbs: {
			swiper: galleryThumbs,
			slidesPerView: 3
		}
	});
}
function tabActiveHomeProduct() {
	$(".vt-home-2 .product-status-tab .product-status-tab-item ").on(
		"click",
		function() {
			var display = $(this).attr("data-status");
			$(
				".product-child-content-wrapper-swiper .product-child-content "
			).removeClass("active");
			$("#" + display).addClass("active");
		}
	);
}
function tabActive() {
	$(".tab-content-wrapper ul li a").on("click", function() {
		$(this)
			.parents(".tab-content-wrapper")
			.find("li")
			.removeClass("active");
		$(this)
			.parents("li")
			.addClass("active");

		var display = $(this).attr("data-type");
		$(".tab-item").removeClass("active");
		$("#" + display).addClass("active");
	});
}

function toggleApplyForm() {
	$(".job-apply-button-wrapper .apply-button a").on("click", function() {
		$(".form-apply").slideToggle();
	});
}
$(document).on("click", ".product-technology-item video", function(e) {
	var video = $(this).get(0);
	if (video.paused === false) {
		video.pause();
		$(this)
			.parent()
			.find(".play__icon")
			.fadeIn();
	} else {
		video.play();
		$(this)
			.parent()
			.find(".play__icon")
			.fadeOut();
	}
	return false;
});
