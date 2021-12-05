class CLI
    def run
        system('clear')
        greeting
        while menu != 'exit'
        end
        end_program
    end

    def greeting
        puts "Welcome to the Covid-19 CLI Tracker!"
    end

    def end_program
        puts "See ya later!"
    end

    def menu
        list_options
        input = gets.chomp.downcase
        choose_option(input)
        return input;
    end

    def list_options
        puts <<-DOC.gsub /^\s*/, ''
            1. List all states
            2. Top ten states with the most confirmed Covid cases
            3. Top ten states with the least confirmed Covid cases
            4. Top ten states with the most confirmed deaths by Covid
            5. Top ten states with the least confirmed deaths by Covid
            6. List from most to least confirmed Covid cases by region
            7. List from most to least confirmed deaths by Covid by region
            8. Overal USA Statistics
            9. Choose State
            Please enter 'exit' to stop the program.
        DOC
    end

    def choose_option(option)
        case option
        when "1"
            puts "Number 1 chosen"
        when "2"
            puts "Number 2 chosen"
        end
    end
end