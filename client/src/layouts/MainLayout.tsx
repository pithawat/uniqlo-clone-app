import { ReactNode } from "react";
import Navbar from "../components/shared/Navbar";
import Footer from "../components/shared/Footer";
import Header from "../components/shared/Header";

export default function MainLayout({ children } : { children: ReactNode}) {
    return(
        <div className="relative w-full">
            <section className="relative ">
                <Header />
                <Navbar />
                {children}
                <Footer />
            </section>
            <div className="relative w-full bg-slate-100 text-slate-400 border-slate-200 border-t-2 ">
                <div className=" max-w-[1270px] mx-auto h-10 px-5 py-7 flex justify-between items-center text-sm font-normal">
                    <p>สงวนลิขสิทธิ์ © บริษัท ยูนิโคล่ (ประเทศไทย) จำกัด</p>
                    <div className="relative flex justify-between items-center gap-3 underline">
                        <a href="/information">เงื่อนไขการใช้งาน</a>
                        <a href="/information">นโยบายความเป็นส่วนตัว</a>
                    </div>
                </div>
            </div>
        </div>
    )
}