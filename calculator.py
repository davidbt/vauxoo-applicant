"""
This module contains CalculatorClass class that gives you the sum of a list.
"""


class CalculatorClass(object):
    """
    Class with just one method (sum) that returns the sum of a list.
    """

    def sum(self, num_list):
        """
        Returns the sum of arg @num_list
        """
        res = 0
        for num in num_list:
            res += num
        # it could be just: return sum(num_list) but I guess you don't
        # want me to use that method.
        return res
