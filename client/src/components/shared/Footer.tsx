import { aboutFooter, accountFooter, helpFooter, newsFooter, followFooter } from "../../constants/Footer";
import BoxLinkFooter from "./BoxLinkFooter";
import LanguageButton from "./LanguageButton";

export default function Footer() {
    return(
        <footer className=" relative bg-slate-100 w-full">
            <div className="grid grid-cols-5 relative bg-slate-100 w-full h-[390px] gap-5 px-5 pt-10  max-w-[1270px] mx-auto">
                <BoxLinkFooter data={aboutFooter} />
                <BoxLinkFooter data={helpFooter} />
                <BoxLinkFooter data={accountFooter} />
                <div className="col-span-1 flex flex-col gap-5">
                    <h2 className="font-bold text-base">{newsFooter.header}</h2>
                    <p className="font-md text-sm w-4/5">{newsFooter.description}</p>
                    <a className="underline font-semibold text-base" href={newsFooter.links.url}>{newsFooter.links.name}</a>
                </div>
                <div className="col-span-1 flex flex-col gap-5">
                    <h2 className="font-bold text-base">{followFooter.header}</h2>
                    <div className="grid grid-cols-4 gap-2">
                        {
                            followFooter.links.map((value, index) => {
                                return <img className="col-span-1" key={index} src={value.url} alt={value.alt} />
                            })
                        }
                    </div>
                </div>
            </div>
            <div className="relative px-5 bg-slate-100 w-full max-w-[1270px] mx-auto h-10 flex justify-start items-center gap-3 text-base font-sm pb-5">
                <LanguageButton language="English" path="en" />
                <span>|</span>
                <LanguageButton language="ไทย" path="th" />
            </div>
        </footer>
    )
}