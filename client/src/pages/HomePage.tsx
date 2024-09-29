import { Link } from "react-router-dom"
import Benefit from "../components/shared/Benefit"
import Corousel from "../components/shared/Carousel"
import { benefitsData } from "../constants/Benefit"
import { informationsData } from "../constants/Information"
import MainLayout from "../layouts/MainLayout"
import { InformationData } from "../types/Information"
import { BenefitData } from "../types/Benefit"

function HomePage() {
  return (
    <MainLayout>
      <Corousel />
      <div className="px-5 mt-20 max-w-[1270px] mx-auto ">
        <h1 className="text-4xl font-black mb-5">NOTICE</h1>
        <div className="flex flex-col justify-center items-start gap-3 underline text-base font-bold">
        <a href="/information">• โปรดระวังการแอบอ้างชื่อ บริษัท ยูนิโคล่ เพื่อรับสมัครงานผ่านสื่อโซเชียลมีเดียต่างๆ</a>
        <a href="/information">• รับฟรี!* เสื้อยืด U AIRISM COTTON OVERSIZED T-SHIRT สำหรับรีวิวโดนใจ 100 รางวัล</a>
        <a href="/information">• โปรดระวังการแอบอ้างชื่อ บริษัท ยูนิโคล่ ผ่านทางเว็บไซต์ หรือโซเชียลมีเดียต่างๆ รวมทั้ง SMS และ MMS</a>
        <a href="/information">• โปรดระวังของลอกเลียนแบบ สินค้า “กระเป๋าสะพายไหล่ ROUND MINI SHOULDER BAG”</a>
        <a href="/information">• โปรดระวังมิจฉาชีพแอบอ้างชื่อ บริษัท ยูนิโคล่ สุ่มส่งสินค้าเก่า-ชำรุด และเรียกเก็บเงินปลายทาง</a>
        </div>
      </div>
      <div className="grid grid-cols-4 px-5 mt-20 gap-7 max-w-[1270px] mx-auto">
        <h1 className="col-span-4 text-4xl font-black">UNIQLO APP BENEFITS</h1>
        {
          benefitsData.map((value:BenefitData, index) => {
            return <Benefit key={index} {...value} />
          })
        }
      </div>
      <div className="grid grid-cols-2 px-5 my-20 max-w-[1270px] mx-auto">
        <h1 className="col-span-2 text-4xl font-black mb-6">INFORMATION</h1>
        {
          informationsData.map((value:InformationData, index) => {
            return <Link key={index} to={value.path} className="col-span-1 my-2 text-base font-normal" >{value.name}</Link>
          })
        }
      </div>
    </MainLayout>
  )
}

export default HomePage