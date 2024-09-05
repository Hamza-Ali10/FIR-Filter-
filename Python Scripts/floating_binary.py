def float_to_binary(f):
    # Convert floating-point number to 16-bit binary representation
    sign_bit = "1" if f < 0 else "0"
    abs_f = abs(f)

    # Round off the result
    rounded_result = round(abs_f * (2**15))

    # Convert to 15-bit binary representation
    binary_representation = format(rounded_result, "015b")

    # If the number was negative, get 2's complement
    if f < 0:
        binary_representation = bin(
            1
            + int(
                "".join("1" if bit == "0" else "0" for bit in binary_representation), 2
            )
        )[2:]

    return sign_bit + binary_representation


def convert_coefficients(input_file, output_file):
    # Read coefficients from the input file
    with open(input_file, "r") as file:
        coefficients = [float(line.strip()) for line in file]

    # Convert coefficients to binary representation
    binary_coefficients = [float_to_binary(coeff) for coeff in coefficients]

    # Save binary coefficients to the output file
    with open(output_file, "w") as file:
        for binary_coeff in binary_coefficients:
            file.write(binary_coeff + "\n")


if __name__ == "__main__":
    # Provide the input and output file names
    input_file_name = "lowpassfir_coeffs_float.txt"  # Update with your input file name
    output_file_name = (
        "lowpassfir_coeffs_binary.txt"  # Update with your output file name
    )

    # Call the function to convert coefficients and save to the output file
    convert_coefficients(input_file_name, output_file_name)
