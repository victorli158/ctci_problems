def zero_matrix(mtx)
  rows = []
  cols = []
  mtx.each_with_index do |row, idx1|
    row.each_with_index do |col, idx2|
      rows << idx1 if col == 0
      cols << idx2 if col == 0
    end
  end
  mtx.each_with_index do |row, idx1|
    row.each_with_index do |el, idx2|
      if rows.include?(idx1) || cols.include?(idx2)
        mtx[idx1][idx2] = 0
      end
    end
  end
  mtx
end

mtx = [[0, 1, 2, 3],
       [5, 4, 0, 1],
       [4, 2, 1, 1]]
       
# Time complexity: O(n)
# Space complexity: O(n)
# Initial mistakes: Tried to iterate and set el = 0. Need to actually set
# mtx[idx1][idx2] = 0