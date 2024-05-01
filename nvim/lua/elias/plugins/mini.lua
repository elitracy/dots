return {
	{
		"echasnovski/mini.pairs",
		dependencies = { "windwp/nvim-ts-autotag" },
		version = "*",
		config = function()
			require("mini.pairs").setup()
		end
	},
	{
		"echasnovski/mini.surround",
		version = "*",
		config = function()
			require("mini.surround").setup()
		end
	},
	{
		"echasnovski/mini.comment",
		version = "*",
		config = function()
			require("mini.comment").setup()
		end
	},
	{
		"echasnovski/mini.ai",
		version = "*",
		config = function()
			require("mini.ai").setup()
		end
	},
}
