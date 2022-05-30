# Definition for singly-linked list.
# class ListNode
#     attr_accessor :value, :nextNode
#     def initialize(value = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  node1 = l1
  node2 = l2
  carry = false
  head_int = node1.val + node2.val
  if head_int > 9
   carry = true
   head_int -= 10
  end
  root = ListNode.new(head_int)
  last = root
  node1 = node1.next
  node2 = node2.next

  while !!node1 || !!node2 || carry
      local_sum = 0
      local_sum = 1 if carry
      carry = false

      if !!node1
          local_sum += node1.val
          node1 = node1.next
      end

      if !!node2
          local_sum += node2.val
          node2 = node2.next
      end

      if local_sum > 9
          local_sum = local_sum - 10
          carry = true
      end

    last.next = ListNode.new(local_sum)
    last = last.next

  end

  return root


end
