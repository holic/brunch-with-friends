# See http://brunch.readthedocs.org/en/latest/config.html for documentation.
exports.config =
  
  paths:
    public: 'public'

  files:
    javascripts:
      defaultExtension: 'coffee'
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
        'test/javascripts/test.js': /^test(\/|\\)(?!vendor)/
        'test/javascripts/test-vendor.js': /^test(\/|\\)(?=vendor)/
      order:
        before: [
          'vendor/scripts/auto-reload-brunch.js'
          # Twitter Bootstrap jquery plugins
          'vendor/scripts/bootstrap/bootstrap-affix.js'
          'vendor/scripts/bootstrap/bootstrap-alert.js'
          'vendor/scripts/bootstrap/bootstrap-button.js'
          'vendor/scripts/bootstrap/bootstrap-carousel.js'
          'vendor/scripts/bootstrap/bootstrap-collapse.js'
          'vendor/scripts/bootstrap/bootstrap-dropdown.js'
          'vendor/scripts/bootstrap/bootstrap-modal.js'
          'vendor/scripts/bootstrap/bootstrap-popover.js'
          'vendor/scripts/bootstrap/bootstrap-scrollspy.js'
          'vendor/scripts/bootstrap/bootstrap-tab.js'
          'vendor/scripts/bootstrap/bootstrap-tooltip.js'
          'vendor/scripts/bootstrap/bootstrap-transition.js'
          'vendor/scripts/bootstrap/bootstrap-typeahed.js'
          # Spine JS
          'vendor/scripts/spine/spine.coffee'
          'vendor/scripts/spine/ajax.coffee'
          'vendor/scripts/spine/list.coffee'
          'vendor/scripts/spine/local.coffee'
          'vendor/scripts/spine/manager.coffee'
          'vendor/scripts/spine/relation.coffee'
          'vendor/scripts/spine/route.coffee'
        ]

    stylesheets:
      defaultExtension: 'scss'
      joinTo: 
        'stylesheets/app.css': /^(app|vendor)/
      order:
        before: [
          'vendor/styles/_bootstrap.scss'
        ]

    templates:
      defaultExtension: 'jade'
      joinTo: 'javascripts/app.js'
