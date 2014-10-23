class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :short_title
      t.text :info
      t.boolean :is_special,default: false
  
      t.string :image
      t.integer :position
      t.timestamps
    end

    array = ["邵氏无痕开眼角","邵氏无痕重睑术","邵氏无痕三层收紧眼袋去除术","邵氏鼻综合整形术","邵氏微创面部提升术","邵氏自体脂肪移植术","邵氏多维形体雕塑术","邵氏微创双平面隆乳术","郝主任:面部微整形,生物焊接重睑术,抗衰老,形象设计"]
    array.each do |name|
    	Project.create(name: name,is_special: true)
    end
  end
end
