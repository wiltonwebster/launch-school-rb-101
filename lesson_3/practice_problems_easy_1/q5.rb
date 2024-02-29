# Programmatically determine if 42 lies between 10 and 100.

p (10..100).include?(42)

# Solution recommends use of #cover instead of #include. Documentation shows
# that #cover and #include are aliases for range objects when both endpoints
# are numeric.