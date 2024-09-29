import { Link } from "react-router-dom";
import { AdvertData } from "../../types/Advert";

export default function Advert({name, detail, price, closeout, limited, path, license} : AdvertData) {
    return(
        <div className="absolute h-full w-full px-5 flex flex-col justify-center items-start">
            <article>
                <h2 className="text-6xl font-bold">{name}</h2>
                <p className="text-2xl">{detail}</p>
            </article>
            <div className="flex justify-start items-end gap-2">
                {closeout && <h1 className="text-4xl font-black text-red-600">{closeout}THB</h1>}
                <h1 className={`${closeout ? 'line-through text-base' : 'text-4xl'} font-black text-white`}>{price}THB</h1>
            </div>
            { limited && <p className="text-red-600">{limited}</p>}
            <Link to={path} className="px-7 py-4 text-base font-bold bg-white bg-opacity-40 text-black " >VIEW MORE</Link>
            {license && <h6>{license}</h6>}
        </div>
    )
}