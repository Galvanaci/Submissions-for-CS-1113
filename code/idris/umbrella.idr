module umbrella

data umbrella = open | close

rain: umbrella -> umbrella
rain b = open

sun: umbrella -> umbrella
sun b = close

