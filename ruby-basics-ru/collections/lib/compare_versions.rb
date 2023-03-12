# frozen_string_literal: true

# BEGIN
def compare_versions(ver1, ver2)
    arr1 = ver1.split(".").map(&:to_i)
    arr2 = ver2.split(".").map(&:to_i)
    arr1 <=> arr2
end
