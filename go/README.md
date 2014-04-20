The collection of [exercism.io](http://exercism.io/) Go lang exercises.

For information on your Go environment, see the [exercism setup
page](http://exercism.io/help/setup/go).

## vim setup

I [added][dfvi] the [jnwhiteh/vim-golang][jvg] plugin along with some [file
type configurations][ftc].

I usually run tests via `,v`:

```vim
:map <leader>v :!go test<cr>
```

[dfvi]: https://github.com/andrewsardone/dotfiles/commit/0b2762ad1b8edaf93cac1af8150d74feae9c8c64
[jvg]: https://github.com/jnwhiteh/vim-golang
[ftc]: https://github.com/andrewsardone/dotfiles/commit/3b186ac25621631fa05016d79d1089dafd48b916
