def hex_to_bin(hex_file_path, bin_file_path):
    try:
        with open(hex_file_path, 'r') as hex_file:
            hex_string = hex_file.read().strip()
            if hex_string.startswith("0x") or hex_string.startswith("0X"):
                hex_string = hex_string[2:]
            binary_data = bytes.fromhex(hex_string)
            with open(bin_file_path, 'wb') as bin_file:
                bin_file.write(binary_data)
            return "ok"
    except FileNotFoundError:
        return "file not found"

hex_file_path = "cell_data_0x024ec56c1d2ad4940a96edfd5cfd736bdb0c7d7342da9e74d3033872bdb9cbc1_0.txt"
bin_file_path = "ckb-dao-vote"
result = hex_to_bin(hex_file_path, bin_file_path)
print(result)
