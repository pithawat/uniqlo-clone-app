import { Link } from 'react-router-dom'
import logo from '/assets/logo.png'
import { categoryAge } from '../../constants/Navbar'
import { IoCartOutline, IoHeartOutline, IoSearchOutline } from 'react-icons/io5'
import { AiOutlineUser } from 'react-icons/ai'

export default function Navbar() {
    return(
        <nav className="relative bg-white h-16 flex justify-between items-center px-6 py-4 mx-auto max-w-[1270px] z-10 w-full">
            <figure className='flex justify-between items-center gap-7'>
                <img className='h-10 mr-3' src={logo} alt='Logo uniqlo' />
                {
                    categoryAge.map((value, index) => {
                        return <h1 className='font-bold text-base hover:underline hover:decoration-red-600 hover:decoration-2' key={index}>{value.toUpperCase()}</h1>
                    })
                }
            </figure>
            <div className='flex justify-between items-center gap-10'>
                <Link to='/search'><IoSearchOutline size={24} /></Link>
                <Link to='/account'><AiOutlineUser size={24} /></Link>
                <Link to='/wishlist'><IoHeartOutline size={24} /></Link>
                <Link to='/cart'><IoCartOutline size={24} /></Link>
            </div>
        </nav>
    )
}