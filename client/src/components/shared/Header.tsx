import LanguageButton from "./LanguageButton";

export default function Header() {
    return(
        <header className="relative z-10 mx-auto px-5 bg-slate-100 w-full max-w-[1270px] h-10 flex justify-end items-center gap-3 text-sm font-normal">
            <a href="/information" ><p>ช่วยเหลือ</p></a>
            <a href="/information" ><p>ค้นหาที่ตั้งสาขา</p></a>
            <LanguageButton language="English" path="en" />
            <span>|</span>
            <LanguageButton language="ไทย" path="th" />
        </header>
    )
}