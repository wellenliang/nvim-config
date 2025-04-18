return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      provider = "siliconflow-deepseek-v3",
      vendors = {
        -- siliconflow大模型市场
        ["siliconflow-deepseek-v3"] = {
          __inherited_from = "openai",
          endpoint = "https://api.siliconflow.cn/v1",
          model = "deepseek-ai/DeepSeek-V3",
          api_key_name = "SILICONFLOW_API_KEY",
          timeout = 3000, -- 超时时间（毫秒），增加此值以适应推理模型
          temperature = 0.7,
          max_tokens = 8192, -- 增加此值以包括推理模型的推理令牌
        },
        ["siliconflow-qwen-coder-32b"] = {
          __inherited_from = "openai",
          endpoint = "https://api.siliconflow.cn/v1",
          model = "Qwen/Qwen2.5-Coder-32B-Instruct",
          api_key_name = "SILICONFLOW_API_KEY",
          timeout = 3000, -- 超时时间（毫秒），增加此值以适应推理模型
          temperature = 0.7,
          max_tokens = 4096, -- 增加此值以包括推理模型的推理令牌
        },
        siliconflow = {
          __inherited_from = "openai",
          endpoint = "https://api.siliconflow.cn/v1",
          model = "Qwen/Qwen2.5-32B-Instruct",
          api_key_name = "SILICONFLOW_API_KEY",
          timeout = 3000, -- 超时时间（毫秒），增加此值以适应推理模型
          temperature = 0.7,
          max_tokens = 4096, -- 增加此值以包括推理模型的推理令牌
        },
        -- deepseek 官方
        deepseek = {
          __inherited_from = "openai",
          api_key_name = "DEEPSEEK_API_KEY",
          endpoint = "https://api.deepseek.com",
          model = "deepseek-chat",
          timeout = 3000, -- 超时时间（毫秒），增加此值以适应推理模型
          temperature = 0,
          max_tokens = 8192, -- 增加此值以包括推理模型的推理令牌
        },
      },
      behaviour = {
        auto_suggestions = true, -- Experimental stage
        auto_set_highlight_group = true,
        auto_set_keymaps = true,
        auto_apply_diff_after_generation = false,
        support_paste_from_clipboard = false,
        minimize_diff = true, -- Whether to remove unchanged lines when applying a code block
        enable_token_counting = true, -- Whether to enable token counting. Default to true.
      },
      hints = { enabled = true },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "ibhagwan/fzf-lua",
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
