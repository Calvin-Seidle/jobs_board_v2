document.addEventListener("turbolinks:load", function () {
	$input = $("[data-behavior='autocomplete']")

	var options = {
		getValue: "name",
		url: function(phrase) {
			return "/search.json?q=" + phrase;
		},
		categories: [
			{
				listLocation: "users",
				header: "--<strong>Users<strong>--",
			},
			{
				listLocation: "jobs",
				header: "--<strong>Jobs<strong>--",
			}
		],
		list: {
			onChooseEvent: function() {
				var url = $input.getSelectedItemData().url
				//console.log(url)
				$input.val("")
				Turbolinks.visit(url)
			}
		}
	}

	$input.easyAutocomplete(options)
});