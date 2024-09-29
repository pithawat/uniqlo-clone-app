import { useNavigate } from 'react-router-dom';
import { selectLanguage, setLanguage } from '../../store/slices/languageSlice';
import { useAppDispatch, useAppSelector } from '../../hooks/redux';

export default function LanguageButton({language, path}:{language: string, path: string}) {
    const selector = useAppSelector(selectLanguage);
    const dispatch = useAppDispatch();
    const navigate = useNavigate();

    const changeLanguage = () => {
        dispatch(setLanguage(path));
        navigate('/' + path);
    };

    return (
        <button className={`${selector.language === path ? 'font-bold' : null}`} onClick={() => changeLanguage()}><span>{language}</span></button>
    );
}
