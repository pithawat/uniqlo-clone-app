import { useState } from "react";

export default function useToggle() {
    const [ isOpen, setIsOpen] = useState<boolean>(false);
    return{
        isOpen,
        open: () => setIsOpen(true),
        close: () => setIsOpen(false),
        toggle: () => setIsOpen(!isOpen)
    }
}