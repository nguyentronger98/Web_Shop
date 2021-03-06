import React, { useState ,useEffect} from 'react'
import { Form, Input, Button, Checkbox, Select, InputNumber, Upload, message } from 'antd'
import TextArea from 'antd/lib/input/TextArea';
import { InboxOutlined } from '@ant-design/icons';
import { productService } from '../../services/ProductService';
import { useNavigate, useParams } from 'react-router-dom';
export default function EditProduct() {
    const { idProduct } = useParams();
    const navigate = useNavigate()
    const [form] = Form.useForm();
    const [product, setProduct] = useState(null)
    const [categoryList, setCategoryList] = useState([])
    const category = categoryList?.find(category=>category.name===product?.category)?.id


    const getProductDetail = async () => {
        try {
            const { data, status } = await productService.getProductDetail(idProduct);
            if(status === 200) {
                setProduct(data)
            }
        } catch (err) {
            console.error()
        }
    }


    const getCategoryList = async () => {
        try {
            const { data, status } = await productService.getCategoryList();
            if (status === 200) setCategoryList(data)
        } catch (err) {
            console.error()
        }
    }
    useEffect(() => {
        getProductDetail()
        getCategoryList()
    }, [])

    useEffect(()=>{
        form.setFieldsValue({
            name:product?.name,
            category:category,
            description:product?.description,
            price:product?.price,
        })
    },[product])

    const renderCategoryList = ()=>{
        return categoryList?.map(category=>{
            return <Select.Option value={category.id} key={category.id}>{category.name}</Select.Option>
        })
    }
    
    const onFinish = async (values: any) => {
        const formData = new FormData();
        for (const name in values) {
            formData.append(name, values[name]); // there should be values.avatar which is a File object
        }
        try {
            const { status } = await productService.updateProduct(product?.id,formData);
            if (status === 200) {
                message.success('C???p nh???t s???n ph???m th??nh c??ng');
                navigate('/productManager')
            }
        } catch (err) {
            console.error()
        }
    };


   
    const [state, setstate] = useState('')

    return (
        <div className='card py-5 px-3'>
            <h3 className="text-center">C???p nh???t s???n ph???m</h3>
            <Form 
            form={form}
                name="basic"
                labelCol={{ span: 8 }}
                wrapperCol={{ span: 10 }}
                onFinish={onFinish}
                autoComplete="off"
            >
                <Form.Item
                    label="T??n s???n ph???m"
                    name="name"
                    rules={[{ required: true, message: 'Please input your username!' }]}
                >
                    <Input/>
                </Form.Item>

                <Form.Item name="catId" label="Nh?? s???n xu???t" rules={[{ required: true }]}>
                    <Select >
                        {renderCategoryList()}
                    </Select>
                </Form.Item>
                <Form.Item
                    label="Gi?? ti???n"
                    name="price"
                    rules={[{ required: true, message: 'Vui l??ng nh???p gi?? ti??n!' }]}
                >
                    <InputNumber style={{ width: '40%' }} />
                </Form.Item>
                <Form.Item
                    label="M?? t???"
                    name="description"
                    rules={[{ required: true, message: 'Vui l??ng nh???p m?? t???!' }]}
                >
                    <TextArea rows={4} />
                </Form.Item>

                <Form.Item wrapperCol={{ offset: 8, span: 16 }}>
                    <Button type="primary" htmlType="submit">
                        Submit
                    </Button>
                </Form.Item>
            </Form>
        </div>
    )
}
