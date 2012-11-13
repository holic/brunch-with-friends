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
          'vendor/scripts/jquery-1.8.1.js'
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
        ]

    stylesheets:
      defaultExtension: 'sass'
      joinTo: 
        'stylesheets/app.css': /^(app|vendor)/
      order:
        before: [
          'vendor/styles/_bootstrap.scss'
        ]

    templates:
      defaultExtension: 'jade'
      joinTo: 'javascripts/app.js'
