# Resque ETL

A [Resque][rq] plugin. Requires Resque 1.27.4

resque-etl adds functionality to configure and enable/disable ETL jobs

Usage / Examples
----------------

### Traffic ETL Settings

```ruby
    require 'resque-etl'

    class Something
      extend Resque::Plugins::Etl
      @variable = :something

      def self.perform(things)
        do_stuff(things)
      end
    end
```


### GoodData ETL Settings

Disabling the GoodData ETL will allow the data source ETLs to complete
successfully without generating an error for the Resque job.

```ruby
    require 'resque-etl'

        class Something
          extend Resque::Plugins::Etl
          @variable = :something

          def self.perform(things)
            do_stuff(things)
          end
        end
```

### Data Source ETL Settings

```ruby
    require 'resque-etl'

    class Something
      extend Resque::Plugins::Etl
      @variable = :something

      def self.perform(things)
        do_stuff(things)
      end
    end
```

Resque-Web integration
----------------------

'ETL Settings' tab in resque web GUI

![Resque ETL GUI](https://www.informatec.com/sites/default/files/styles/medium/public/image-seperator/BI-Entstehungsprozess_2.jpg)


Install
=======

Add to your Gemfile

    $ gem "resque-etl"

Add to routes.rb file

    require 'resque-etl/server'

[rq]: https://github.com/resque/resque
