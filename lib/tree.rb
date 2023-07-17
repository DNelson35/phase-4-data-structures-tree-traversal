class Tree
  def initialize(root = nil)
    @root = root
  end
  # def breadth_first_traversal(node)
  #   result = []
  #   nodes_to_visit = [node]

  #   while nodes_to_visit.length > 0
  #     node = nodes_to_visit.shift
  #     result.push(node[:value])
  #     nodes_to_visit = nodes_to_visit + node[:children]
  #   end
  #   result
  # end

  # nonrecursive traversal
  # def depth_first_traversal(node)
  #   result = []
  #   nodes_to_visit = [node]
  #   while nodes_to_visit.length > 0
  #     node = nodes_to_visit.shift
  #     result.push(node[:value])
  #     nodes_to_visit = node[:children] + nodes_to_visit
  #   end
  #   result
  # end

  # recursive
  # def depth_first_traversal(node, result = [])
  #   result.push(node[:value])

  #   node[:children].each do |child|
  #     depth_first_traversal(child, result)
  #   end
  #   result
  # end


  def get_element_by_id(id)
    visit = [@root]

    until visit.empty?
      curr = visit.pop
      return curr if curr[:id] == id

      visit = visit + curr[:children]
    end
    nil
  end

end