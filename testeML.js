function decomposeNumbers(maxDigit) {
    let arrayValidValues = [];
    let maxValue = maxDigit + maxDigit * 10 + maxDigit * 100 + maxDigit * 1000;
    let minValue = 1000;

    for (let i = minValue; i < maxValue; i++) {
        let stringValue = i.toString();
        let arr = stringValue.split("");

        if ((arr[0] <= maxDigit) && (arr[1] <= maxDigit) && (arr[2] <= maxDigit) && arr[3] <= maxDigit) {

            let sum = parseInt(arr[0]) + parseInt(arr[1]) + parseInt(arr[2]) + parseInt(arr[3]);

            if (sum == 21) {
                arrayValidValues.push(arr.join(""));
            }

        }
    }
    if (arrayValidValues.length > 0) {
        for (i = 0; i < arrayValidValues.length; i++) {
            console.log(arrayValidValues[i]);
        }
    } else {
        console.log(null);
    }
}

decomposeNumbers(8);
