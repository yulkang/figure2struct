# figure2struct
Categorize MATLAB graphics objects in a figure/axes and return them as fields of a structure

  h = figure2struct(src)
 
  **src** : handle of a figure, an axes or handles of its children.
        gcf by default.
        When a figure is given, the returning struct h has the same
        number of rows and columns as the subplots.
        The rows and columns are determined based on the position,
        without using subplot. So this function can be used with 
        figures where the subplots are repositioned, e.g., for printing.
 
  **h(row,col)** : a struct containing the following fields:
  - axes
  - children (all children regardless of kind)
  - line
  - text
  - legend
  - marker (line with LineStyle = 'none'),
  - segment (line with only two coordinates), 
  - segment_vert
  - segment_horz
  - crossline (line that spans at least one axis)
  - nonsegment (lines that connect more than two points).
 
