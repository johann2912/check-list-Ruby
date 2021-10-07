require "./list.rb"
require "./item.rb"

# Agregate article
# Remove article
# Show All articles
# Checked article
# Deleted All articles
# exit application

class ListApp
    attr_writer :list

    def initialize
        @list = List.new
    end

    def run
        puts "Welcome to our shopping list"
        loop do
            puts "A - Add an item"
            puts "R - Remove an article"
            puts "V - Show all items"
            puts "C - Check an article"
            puts "D - Delete all articles"
            puts "E - Exit"
            input = gets.chomp

            case input.upcase
            when 'E'
                break
            end
        end 
        puts "thank you for using our application"
    end
end

list_app = ListApp.new
list_app.run