assets_live_compile
=========================
Compile and save assets on demand instead of using `rake assets:precompile`

This works just like `rake assets:precompile` but is triggered on the asset HTTP request, so the cost of compilation is due to the first asset request. Next time Nginx will find the static asset on `public/assets`.

Compile your assets by doing a warm up request :)

Configuration
-------------

    config.assets.serve_static_assets = true
    config.assets.compile = true
    config.assets.cache_store = :assets_live_compile_store


