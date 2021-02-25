def first_func
    puts "Введите имя"
    input_name = gets.chomp
    puts "Введите возр"
    input_age = gets.to_i
    puts "Введите фамилию"
    input_second_name = gets.chomp


    puts "Привет, #{input_name} #{input_second_name}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано" if input_age < 18


    puts "Привет, #{input_name} #{input_second_name}. Самое время заняться делом!" if input_age >= 18
end

def second_func
    puts "Введите первое число"
    first_num = gets.to_i
    puts "Введите второе число"
    second_num = gets.to_i
    
    if first_num == 20 || second_num == 20 
        puts 20 
    else
        puts (first_num + second_num)
    end
end

def menu
    loop do
    puts "Выбор задания:
    1 - 1
    2 - 2
    -1 - Выход"
    input = gets.to_i
    if input == 1
        first_func
    elsif input == 2
        second_func
    elsif input == -1
        break
    else
        puts "Команда не найдена"
    end
end
end

menu