class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :kind
      t.timestamps
    end
  
    h={"about_doctorshao"=>"关于邵主任","about_doctorhao"=>"关于郝主任","contact_us"=>"联系我们"}
    h.each do |k,v|
     p=Page.create(title: v,kind: k)
     c =  Content.new(body: "")
     c.item=p
     c.save
    end
    add_index :pages,:kind
   end 
 
end
