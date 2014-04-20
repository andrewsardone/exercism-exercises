The collection of [exercism.io](http://exercism.io/) Elixir exercises.

For information on your Elixir environment, see the [exercism setup
page](http://exercism.io/help/setup/elixir).

## vim setup

I [added][dfvi] the [elixir-lang/vim-elixir][viel] plugin.

I usually run tests via `,v` from the source file:

```vim
:map <leader>v :!elixir %:r_test.exs<cr>
```

[dfvi]: https://github.com/andrewsardone/dotfiles/commit/ddbd21f
[viel]: https://github.com/elixir-lang/vim-elixir
