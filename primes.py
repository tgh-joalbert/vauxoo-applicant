"""
Encapsulation method for verifying prime numbers
"""


class PrimeClass(object):
    """
    Definition of the method is_prime
    """
    def is_prime(self, num_int):
        """
        Any number less than 2 is not a prime number
        We go through the numbers, starting with the number
        two up to the one ingressed.
        We check if its residue is equal to zero.
        """
        # your primes code here
        if num_int < 2:
            return False
        for sequential in range(2, num_int):
            if num_int % sequential == 0:
                return False
        return True
