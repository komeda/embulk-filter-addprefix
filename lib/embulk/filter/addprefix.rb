module Embulk
  module Filter

    class Addprefix < FilterPlugin
      Plugin.register_filter("addprefix", self)

      def self.transaction(config, in_schema, &control)
        task = {
          "prefix" => config.param("prefix", :string),
        }

        columns = in_schema.map do |column|
          new_name = "#{task['prefix']}#{column.name}"
          Column.new(nil, new_name, column.type, column.format)
        end

        yield(task, columns)
      end

      def init
        @prefix = task["prefix"]
      end

      def close
      end

      def add(page)
        page.each do |record|
          page_builder.add(record)
        end
      end

      def finish
        page_builder.finish
      end
    end

  end
end
