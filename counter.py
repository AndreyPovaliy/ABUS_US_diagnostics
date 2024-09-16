list = ["Birads 1",
                                                                 "Birads 2",
                                                                 "Birads 3",
                                                                 "Birads 4а",
                                                                 "Birads 4b",
                                                                 "Birads 4c",
                                                                 "Birads 5",
                                                                 "Birads 6",
                                                                 "Birads 0"]

n = 1
for item in list:
  print(f"{n} - {item},")
  n+=1

n = 1
for item in list:
  print(f'"{item}" = "{n}",')
  n+=1
