class Decompose
  def numbers(max_digit)
    valid_values = []
    max_value = max_digit + max_digit * 10 + max_digit * 100 + max_digit * 1000
    min_value = 1000

    x = min_value

    while x < max_value
      arr = x.to_s.split('')

      if arr[0].to_i <= max_digit && arr[1].to_i <= max_digit && arr[2].to_i <= max_digit && arr[3].to_i <= max_digit
        sum = arr[0].to_i + arr[1].to_i + arr[2].to_i + arr[3].to_i

        valid_values.push(arr.join('')) if sum == 21
      end
      x += 1
    end
    if valid_values.empty?
      puts 'Sem resultado'
    else
      puts valid_values
    end
  end
end

Decompose.new.call(8)
