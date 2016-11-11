"""
A module that just implements PrimeClass class.
"""


class PrimeClass(object):
    """
    Just one method (is_prime).
    """

    def is_prime(self, num_int):
        """
        Returns True if arg @num_int is a prime number.
        """
        if num_int < 2:
            return False
        for i in xrange(2, num_int):
            if num_int % i == 0:
                return False
        return True
