class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :short_title
      t.text :info
      t.boolean :is_special,default: false
      t.integer :parent_id
      t.string :image
      t.integer :position
      t.timestamps
    end

    array = ["邵氏无痕开眼角","邵氏无痕重睑术","邵氏无痕三层收紧眼袋去除术","邵氏鼻综合整形术","邵氏微创面部提升术","邵氏自体脂肪移植术","邵氏多维形体雕塑术","邵氏微创双平面隆乳术","郝主任:面部微整形,生物焊接重睑术,抗衰老,形象设计"]
    array.each do |name|
    	Project.create(name: name,is_special: true)
    end
    other = {"眼部"=> %w{双眼皮 内眼角 外眼角 眼袋 提眉 眼底娇媚术},  
             "鼻部"=> %w{隆鼻术 鼻头缩小 鼻翼缩小 驼峰鼻 鹰钩鼻矫正 歪鼻矫正 鼻综合整形术}, 
             "面部" => %w{全面部除皱术 颞部除皱 额部除皱 中面部除皱 下面部除皱 颈部除皱 下颌角成形术 颧骨成形术 颧弓成形术 下颏成型术 隆下颏 隆眉弓 隆颞部},
             "乳房"=> %w{隆乳术 巨乳缩小术 乳房上提术 乳头缩小术 乳头凹陷矫正},
             "脂肪"=> %w{面部吸脂 上臂吸脂 大腿吸脂 小腿吸脂 腰腹部吸脂  后背吸脂  腹壁成形术},
             "脂肪移植"=>%w{丰颏 丰手 丰臀 丰乳 丰面颊 丰颞 丰苹果机 丰额 丰唇 丰鼻唇沟},
             "注射"=>%w{除皱 瘦小腿 玻尿酸注射 羊胎素注射}}

    other.each do |k,v|
      root = Project.create(name: k,is_special: false)
      v.each do |name|
         root.children.create(name: name,is_special: false)
      end
    end
  end
end
