# Given a checker board grid with columns marked A-H, and rows marked 1-8, create a function that determines if two cell inputs are the same color example checker_board_cell_color('A3','C5') should output True

def checker_board_cell_color(cell1, cell2):
    def get_cell_value(cell):
        column = cell[0]
        row = int(cell[1])
        value = True
        count = 0
        if column in ('A', 'C', 'E', 'G'):
            count += 1

        while count < row:
            value = not value
            count += 1
        return value

    cell1Value = get_cell_value(cell1)
    cell2Value = get_cell_value(cell2)

    cellValueMatch = cell1Value == cell2Value

    return cellValueMatch


# returns True
print(checker_board_cell_color('A3', 'C5'))

# returns False
print(checker_board_cell_color('B6', 'C6'))
