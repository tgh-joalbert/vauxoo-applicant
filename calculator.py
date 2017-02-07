"""
Encapsulation of method to add numbers
"""


class CalculatorClass(object):
    """
    Definition of the method sum
    """

    def sum(self, num_list):
        """
        An accumulator is created to return the accumulated
        sum within the cycle
        """
        # your sum code here
        local_sum = 0
        for sequential in range(0, len(num_list)):
            local_sum = local_sum + num_list[sequential]
        return local_sum
