// own solution:
// function createPhoneNumber(numbers: number[]): string {
//       const numbers_str = numbers.join('');
//       return `(${numbers_str.slice(0, 3)})` + ' ' + numbers_str.slice(3, 6) + '-' + numbers_str.slice(6)
// }

// clever solution:
const createPhoneNumber = (numbers: number[]): string => {
  let phoneNumber: string = "(xxx) xxx-xxxx";

  for (let i = 0; i < numbers.length; i++) {
    phoneNumber = phoneNumber.replace("x", numbers[i].toString());
  }

  return phoneNumber;
};

console.log(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]));
