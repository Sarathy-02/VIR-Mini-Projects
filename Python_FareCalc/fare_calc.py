def calculate_fare(km, type, hour):
    rates = {'Economy': 10, 'Premium': 18, 'SUV': 25}
    
    if type not in rates:
        return "Service Not Available"
    
    cost = km * rates[type]
    
    if 17 <= hour <= 20:
        cost *= 1.5
        
    return cost

distance = float(input("Enter distance (km): "))
vehicle = input("Enter vehicle (Economy/Premium/SUV): ")
time = int(input("Enter hour (0-23): "))

total_price = calculate_fare(distance, vehicle, time)

if isinstance(total_price, str):
    print(total_price)
else:
    print("-" * 20)
    print(f"Total Fare: ${total_price:,.2f}")
    print("-" * 20)