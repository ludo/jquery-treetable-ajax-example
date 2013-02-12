require 'pp'

# seeds.xml was generated with 'tree' command (tree -XDh)
tree = Hash.from_xml(File.read(Rails.root.join("db/seeds.xml")))["tree"]
report = tree["report"]

def create_nodes(parent, tree)
  ["directory", "file"].each do |kind|
    if tree[kind]
      tree[kind] = [tree[kind]] unless tree[kind].is_a?(Array)
      tree[kind].each do |value|
        node = Node.create(
          kind: kind,
          modified_at: value["time"].present? ? Time.parse(value["time"]) : nil,
          name: value["name"],
          parent: parent,
          size: value["size"].present? ? value["size"].to_i : nil
        )

        create_nodes(node, value)
      end
    end
  end
end

Node.delete_all
create_nodes(nil, tree["directory"])

# Checksum
puts "=" * 80
report.each_pair do |kind, expected_count|
  kind = kind.singularize
  actual_count = Node.where(kind: kind).count
  puts "Created #{actual_count}/#{expected_count} #{kind} nodes"
end
puts "=" * 80
