# Sample data (you'll need to replace this with actual data retrieval logic)
# Assume messages are stored in a list of dictionaries or any appropriate data structure
messages_data = [
    {"sender": "+123456789", "receiver": "+987654321", "flags": "URGENT"},
    {"sender": "+987654321", "receiver": "+123456789", "flags": "NORMAL"},
    # Add more messages here
]

# Function to process and extract statistics
def extract_message_statistics(data):
    for message in data:
        sender = message.get("sender", "Unknown")
        receiver = message.get("receiver", "Unknown")
        flags = message.get("flags", "Unknown")
        print(f"{sender},{receiver},{flags}")

# Run the function with the provided data
extract_message_statistics(messages_data)
