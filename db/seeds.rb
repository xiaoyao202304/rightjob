# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jobs = [
  "rails工程师",
  "api程序员",
  "iOS开发工程师",
  "前端开发工程师",
  "Html5工程师",
  "Android开发工程师",
  "测试工程师",
  "Node.js 工程狮",
  "后端工程师",
  "rails高级工程师",
  "rails工程师"
]

company = [
  "logicmonitor",
  "宏利金融全球服务中心",
  "阿里巴巴集团",
  "腾讯科技深圳有限公司",
  "车轮互联",
  "京东",
  "Google",
  "Facebook",
  "Amazon",
  "Apple"
]

location = [
  "北京",
  "上海",
  "广州",
  "深圳",
  "杭州",
  "San Francisco",
  "Palo Alto",
  "Cupertino",
  "Pleasanton",
  "Mountain View"
]

description = "About Us 關於我們...

We are a distributed development team with offices in Taipei and Los Angeles, working together to build best in breed web applications to handle all aspects of managing a Physical Therapy Practice. In order to ensure that we are building the best software available we have partnered with several top Physical Therapy Consultants in the US and work closely with them and dozens of other practices to ensure that the software we work on everyday is improving our clients day to day work experience.
我們是一跨國軟體開發團隊,致力於開發管理整個復健中 心所需的最佳網站應用系統,在洛杉磯及台北設有辦公 室。我們與美國復健醫療界頂尖的顧問及參與測試的復健 體系密切合作,以打造最有助於客戶日常工作的軟體系 統。

職缺能力經歷要求:

Requirements 必要條件:
* Must love Ruby and Rails (whether you are a beginner or a seasoned rubyist)
* Solid understanding of RSpec, testing frameworks
* Knowledgeable in GIT, Gitflow; 使用Git/Gitflow
* Big plus for Javascript, CSS, and HTML, javascript frameworks such as React
* 2 Yrs Professional experience preferred
* Self-discipline and strong time-management skills
* Strong technical English

Nice to Have 加分條件
* Deployment experience including Capistrano and others a big plus
* Familiarity with NoSQL tools like MongoDB, CouchDB, Riak a plus
* Familiarity with Redis, Resque, RabbitMQ very helpful
* Contributor to Open Source projects a plus
* 熟悉任一NoSQL資料庫。
* 具任一動態語言(例如Ruby, Python等)撰寫經驗。
* 具組態管理工具(例如Chef或Puppet等)實務經驗。

Responsibilities 職掌:
* Able to work well with others as well as work independently, and be self-motivated
* Able to communicate clearly and effectively
* Willing to participate in weekly meetings/standups
* Able to deliver clean, maintainable code.

工作福利:

* Conference Reimbursement (one per year)
* All Mac office 全Mac工作環境, all devs 27” displays
* Office centrally located in Taipei city, Chungshan N. Rd. 工作地點便利，位市中心，近捷運站
* Pair programming opportunities
* Enjoyable office environment, plenty of snacks, flexible hours"

create_jos = for i in 1..40 do
  Job.create!([
    title: jobs.sample,
    # title: "JOB.no#{i}",
    description: "这是用种子建立的第 #{i} 个Public工作哦, 具体如下： \n #{description}",
    wage_upper_bound: rand(50..99)*100 + 5000,
    wage_lower_bound: rand(10..49)*100 + 5000,
    contact_email: 'right_job@gmail.com',
    is_hidden: "false",
    location: location.sample,
    company: company.sample,
    job_type: Job::JOB_TYPE.sample
  ])
end

puts "40 Public jobs created."
