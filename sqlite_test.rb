require "sqlite3"
require "dotted_rulers/sqlite_model"

class DottedRulersTable < DottedRulers::Model::SQLite; end
STDERR.puts DottedRulersTable.schema.inspect

drt = DottedRulersTable.create "title" => "Something happend. Not sure what but it did.",
   "posted" => 1, "body" => "Yep!"
drt = DottedRulersTable.create "title" => "Saw it happen"

top_id = drt["id"].to_i
(1..top_id).each do |id|
  drt_id = DottedRulersTable.find(id)
  puts "Found title #{drt_id["title"]}."
end
puts "Count: #{DottedRulersTable.count}"

drt = DottedRulersTable.create "title" => "I saw it again! Honest!"
drt["title"] = "I really did! I saw it!"
drt.save!

drt2 = DottedRulersTable.find drt["id"]
puts "Title: #{drt2[""]}"