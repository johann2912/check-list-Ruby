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
            puts
            puts "A - Add an item"
            puts "R - Remove an article"
            puts "S - Show all items"
            puts "C - Check an article"
            puts "D - Delete all articles"
            puts "E - Exit"
            input = gets.chomp

            case input.upcase
            when 'A'
                puts
                puts "what would you like to add?"
                item = gets.chomp
                @list.add_item(item)
                30.times { print "*" }
                puts "\n#{item} has been added to your list"
                30.times { print "*" }

            when 'R'
                puts
                puts "which item you want to remove?"
                index = gets.chomp
                @list.remove_item(index.to_i)
                30.times { print "*" }
                puts "\n#{index} has been removed from your list"
                30.times { print "*" }
            
            when 'S'
                puts
                @list.show_all
                30.times { print "*" }
                puts "\nthese are all the items on your list"
                30.times { print "*" }
            when 'C'
                puts
                puts "which item you want to mark "
                index = gets.chomp
                @list.check_item(index.to_i) 
                30.times { print "*" }
                puts "\n#{index} has been marked"
                30.times { print "*" }
            when 'D'
                puts
                puts "do you want to remove all items? y/n"
                input = gets.chomp
                if input.upcase == 'Y'
                    @list.remove_all
                else
                    puts "cancelled operation"
                end
            
            when 'E'
                break
            end
        end 
        puts "thank you for using our application"
    end
end

list_app = ListApp.new
list_app.run