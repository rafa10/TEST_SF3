<?php

namespace ArticleBundle\Controller;

use ArticleBundle\Entity\Articles;
use ArticleBundle\Form\ArticlesType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

class ArticlesController extends Controller
{
    /**
     * @Route("/")
     */
    public function IndexAction()
    {

        $em = $this->getDoctrine()->getManager();

        $articles = $em->getRepository('ArticleBundle:Articles')->findAll();

        return $this->render('ArticleBundle:Articles:index.html.twig', array(
            'articles' => $articles
        ));
    }

    /**
     * @Route("/article/{id}")
     */
    public function ShowAction($slug)
    {

        $em = $this->getDoctrine()->getManager();

        $slug = str_replace('-', ' ', $slug);

        $articles = $em->getRepository('ArticleBundle:Articles')->findOneBySlug($slug);

        return $this->render('ArticleBundle:Articles:show.html.twig', array(
            'articles' => $articles
        ));
    }

    /**
     * @Route("/Create")
     */
    public function CreateAction(Request $request)
    {

        $em = $this->getDoctrine()->getManager();

        $articles = New Articles();

        $form =  $this->createForm(ArticlesType::class, $articles);
        if($request->isMethod('POST')){
            $form->handleRequest($request);

            if ($form->isValid()) {
                $title = $form['title']->getData();
                $articles->setSlug($title);
                $em->persist($articles);
                $em->flush();

                return $this->redirect($this->generateUrl('article_create'));
            }
        }

        return $this->render('ArticleBundle:Articles:create.html.twig', array(
            'form' => $form->createView()
        ));
    }

    /**
     * @Route("/supprimer/{id}")
     */
    public function DestroyAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $articles = $em->getRepository('ArticleBundle:Articles')->find($id);
        $em->remove($articles);
        $em->flush();

        return $this->redirect($this->generateUrl('article_homepage'));
    }

}
