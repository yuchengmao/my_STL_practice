#ifndef _M_TYPE_TRAITS_HPP_
#define _M_TYPE_TRAITS_HPP_
//  finished
#include <type_traits>

namespace mystl
{

template<class _Tp, _Tp _value>
struct m_integral_constant
{
    static constexpr _Tp value = _value;
};

template <bool _b>
using m_bool_constant = m_integral_constant<bool, _b>;

typedef m_bool_constant<true> m_true_type;
typedef m_bool_constant<false> m_false_type;


//-------------------------------------------------------------------------------------
//---------------------------------- type_traits --------------------------------------
//-------------------------------------------------------------------------------------

template <class _Tp1, class _Tp2>
struct pair;

template <class _Tp>
struct is_pair : mystl::m_false_type {};

template <class _Tp1, class _Tp2>
struct is_pair<mystl::pair<_Tp1, _Tp2>> : mystl::m_true_type {};

} // namespace mystl


#endif /* _M_TYPE_TRAITS_HPP_ */
