<?php

namespace ArticleBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class ArticlesType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title', TextType::class )
            ->add('leadings', TextareaType::class, array('attr'=> array('class'=>'materialize-textarea')))
            ->add('body', TextareaType::class, array('attr'=> array('class'=>'materialize-textarea')))
            // ->add('slug', TextareaType::class, array('attr'=> array('class'=>'materialize-textarea')))
            ->add('createdBy', TextType::class )
        ;
    }
    
    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'ArticleBundle\Entity\Articles'
        ));
    }
}
