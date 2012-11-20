<% earth_size = 20 %>
mercury:
  size: <%= earth_size / 50 %>
  brightest_on: <%= 113.days.ago.to_s(:db) %>

venus:
  size: <%= earth_size / 2 %>
  brightest_on: <%= 67.days.ago.to_s(:db) %>

mars:
  size: <%= earth_size - 69 %>
  brightest_on: <%= 13.days.from_now.to_s(:db) %>
