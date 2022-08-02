def decompose_numbers(maxDigit)
  validValues = []
  maxValue = maxDigit + maxDigit * 10 + maxDigit * 100 + maxDigit * 1000
  minValue = 1000

  x = minValue

  while x < maxValue
    arr = x.to_s.split("")

    if arr[0].to_i <= maxDigit && arr[1].to_i <= maxDigit && arr[2].to_i <= maxDigit && arr[3].to_i <= maxDigit
      sum = arr[0].to_i + arr[1].to_i + arr[2].to_i + arr[3].to_i

      if sum == 21
        validValues.push(arr.join(""))
      end
    end
    x += 1
  end

  if validValues.empty?
    puts "Sem resultado"
  else
    puts validValues
  end
end

decompose_numbers(8)
