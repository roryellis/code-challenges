// Return Greatest Prime Factor of a number input.

// Check if input is prime
function isPrime(num) {
	let primeCheck = true;
	if (num === 1 || num === 2) {
		primeCheck = true;
	} else {
		for (let i = 2; i <= Math.ceil(Math.sqrt(num)); i++) {
			if (num % i === 0) {
				primeCheck = false;
			}
		}
	}

	return primeCheck;
}

//Return array of primes less than input number. This returns in descending order as the simplest solution for the following function, but can easily change order by replacing unshift with push.
function getPrimes(num) {
	const primes = [];
	for (let i = 2; i <= num; i++) {
		if (isPrime(i)) {
			primes.unshift(i);
		}
	}

	return primes;
}

//Determine greatest prime factor of input number
function greatestPrimeFactor(num) {
	if (isPrime(num)) {
		return num;
	} else {
		// dividing the input num by two for the getPrimes argument minimizes the size of the returned array as no number greater than half of the input can be multiplied by any number greater than two to produce the input number. THe Math.ceil method ensures a whole number is passed.
		const primeList = getPrimes(Math.ceil(num / 2));
		let primeFactor;
		let factorFound = false;
		let i = 0;

		while (!factorFound) {
			if (num % primeList[i] === 0) {
				primeFactor = primeList[i];
				factorFound = true;
				return primeFactor;
			} else {
				i++;
			}
		}
	}
}

console.log(greatestPrimeFactor(5674));
