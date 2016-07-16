module FlightsHelper
  # Called from the view on a radio button, returns true if the current index is 0
  # This makes the radio button selected
  def selectIfTopButton(index)
    index == 0 ? true : false
  end
end
